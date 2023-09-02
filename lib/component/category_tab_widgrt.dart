import 'package:flutter/material.dart';
import 'package:u_bazar/component/app_colors.dart';

class CatergoryTabWidget extends StatelessWidget {
  const CatergoryTabWidget(
      {super.key, required this.tabName, required this.tabImage});
  final String tabName;
  final String tabImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Tab(
        height: 120,
        icon: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 11,
                  offset: const Offset(5, 3),
                ),
              ]),
          child: Image.asset(
            tabImage,
            fit: BoxFit.cover,
            height: 50,
          ),
        ),
        text: tabName,
        iconMargin: const EdgeInsets.symmetric(
          vertical: 5,
        ),
      ),
    );
  }
}
