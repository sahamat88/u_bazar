import 'package:flutter/material.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/component/custom_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.leading,
      required this.title,
      required this.action,
      required this.leadingOnTap,
      required this.itemNo,
      this.actionOnTap});
  final String leading;
  final String title;
  final String action;
  final VoidCallback leadingOnTap;
  final VoidCallback? actionOnTap;
  final int itemNo;
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
            InkWell(
              onTap: leadingOnTap,
              child: Image.asset(
                leading,
                height: 20,
              ),
            ),
            Text(
              title,
              style: textStyle4,
            ),
            InkWell(
              onTap: actionOnTap,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      action,
                      height: 30,
                    ),
                  ),
                  Positioned(
                    top: 4,
                    left: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColors.whiteColor,
                      child: Text(itemNo.toString()),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
