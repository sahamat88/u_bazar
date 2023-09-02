import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:u_bazar/component/app_colors.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _controller = PageController();
//Slider Image List
  final List<String> _slideImages = [
    "assets/images/slide-1.png",
    "assets/images/slide-1.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: _slideImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: Image.asset(_slideImages[index].toString()),
              );
            },
          ),
        ),
        Positioned(
          left: 180,
          right: 120,
          bottom: 11,
          child: SmoothPageIndicator(
              controller: _controller,
              effect: const SlideEffect(
                  activeDotColor: AppColors.whiteColor,
                  dotWidth: 7,
                  dotHeight: 7,
                  dotColor: AppColors.darkGreyColor),
              count: 3),
        ),
      ],
    );
  }
}
