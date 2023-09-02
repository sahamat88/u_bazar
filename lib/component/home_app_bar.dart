import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_bazar/component/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      color: AppColors.green,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/menu-icon.png",
              height: 20,
            ),
            SvgPicture.asset(
              "assets/images/logo-3.svg",
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/search.png",
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/shopping-cart.png",
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
