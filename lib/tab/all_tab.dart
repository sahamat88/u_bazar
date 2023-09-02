import 'package:flutter/material.dart';
import 'package:u_bazar/component/category_listview_widget.dart';

class AllTab extends StatefulWidget {
  const AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  final List<Map<String, dynamic>> _catInfo = [
    {
      "catImage": "assets/images/cat-image-1.png",
      "catName": "Fruits and Vegetables"
    },
    {
      "catImage": "assets/images/cat-image-2.png",
      "catName": "Grocery and Staples"
    },
    {"catImage": "assets/images/cat-image-3.png", "catName": "Household Needs"},
    {
      "catImage": "assets/images/cat-image-4.png",
      "catName": "Mans and Womens Wear"
    },
    {"catImage": "assets/images/cat-image-5.png", "catName": "Foot ware"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
              height: 4,
            ),
        itemCount: _catInfo.length,
        itemBuilder: (context, index) {
          return CategoryListViewWidget(
              catName: _catInfo[index]["catName"],
              catImage: _catInfo[index]["catImage"]);
        });
  }
}
