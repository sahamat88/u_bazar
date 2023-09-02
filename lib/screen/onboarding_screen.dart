import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/screen/bottom_nav_bar_screen/custom_nav_bar.dart';
import 'package:u_bazar/screen/intro_screen/best_grocery_screen.dart';
import 'package:u_bazar/screen/intro_screen/delivery_screen.dart';
import 'package:u_bazar/screen/intro_screen/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool onLastPage = false;
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: const [
            WelcomeScreen(),
            DeliveryScreen(),
            BestGroceryScreen()
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          alignment: const Alignment(0.9, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomNavBar()));
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontFamily: "roboto-regular",
                        fontSize: 20),
                  )),
              SmoothPageIndicator(
                  controller: _controller,
                  effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.lightGreen,
                      dotWidth: 15,
                      dotColor: AppColors.darkGreyColor),
                  count: 3),
            ],
          ),
        )
      ]),
    );
  }
}
