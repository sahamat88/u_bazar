import 'package:flutter/material.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/component/custom_text_style.dart';
import 'package:u_bazar/screen/product_screen.dart';

class CategoryListViewWidget extends StatelessWidget {
  const CategoryListViewWidget(
      {super.key, required this.catName, required this.catImage});
  final String catName;
  final String catImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      decoration: BoxDecoration(color: AppColors.whiteColor, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          offset: const Offset(0.0, 1.0),
          blurRadius: 5.0,
        ),
      ]),
      child: ListTile(
        title: Text(
          catName,
          style: textStyle2,
        ),
        leading: SizedBox(
          height: 80,
          width: 80,
          child: Image.asset(
            catImage,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        subtitle: Text(
          "Lorem ipsum diord sit amit,sjjrk aosjet constectia adiposimg sot",
          style: textStyle3,
        ),
        trailing: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductScreen(
                          catName: catName,
                        )));
          },
          child: const ImageIcon(
              AssetImage(
                "assets/images/arrow_right.png",
              ),
              color: AppColors.deepGreen,
              size: 30),
        ),
      ),
    );
  }
}
