import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/component/custom_text_style.dart';

class BestGroceryScreen extends StatelessWidget {
  const BestGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 17, right: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text("Best Quality", style: textStyle1),
              Row(
                children: [
                  const Text("Grocery",
                      style: TextStyle(
                        fontFamily: "roboto-bold",
                        color: AppColors.deepGreen,
                        fontSize: 34,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Door toDoor", style: textStyle1),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          SvgPicture.asset("assets/images/onboard-image-3.svg")
        ],
      ),
    );
  }
}
