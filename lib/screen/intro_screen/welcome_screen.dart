import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_bazar/component/custom_text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome to", style: textStyle1),
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/logo-2.svg",
                height: 38,
              ),
              const SizedBox(
                width: 10,
              ),
              Text("Aplication", style: textStyle1),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          SvgPicture.asset("assets/images/onboard-image-1.svg")
        ],
      ),
    );
  }
}
