import 'package:flutter/material.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/tab/all_tab.dart';
import 'package:u_bazar/tab/fish_tab.dart';
import 'package:u_bazar/tab/fruits_tab.dart';
import 'package:u_bazar/tab/vegetables_tab.dart';
import 'package:u_bazar/component/image_slider.dart';
import 'package:u_bazar/component/home_app_bar.dart';
import 'package:u_bazar/component/category_tab_widgrt.dart';

class HoemScreen extends StatefulWidget {
  const HoemScreen({super.key});

  @override
  State<HoemScreen> createState() => _HoemScreenState();
}

class _HoemScreenState extends State<HoemScreen> {
  final List<Widget> _tabInfo = [
    const CatergoryTabWidget(
        tabName: "All", tabImage: "assets/images/market.png"),
    const CatergoryTabWidget(
        tabName: "Vagitable", tabImage: "assets/images/003-vegetables.png"),
    const CatergoryTabWidget(
        tabName: "Fruit", tabImage: "assets/images/001-fruits.png"),
    const CatergoryTabWidget(
        tabName: "Fish", tabImage: "assets/images/006-fish.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabInfo.length,
      child: SafeArea(
        child: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            const SizedBox(
              height: 5,
            ),
            const ImageSlider(),
            const SizedBox(
              height: 20,
            ),
            TabBar(
                isScrollable: true,
                unselectedLabelColor: AppColors.darkGreyColor,
                indicatorColor: Colors.transparent,
                tabAlignment: TabAlignment.center,
                labelColor: AppColors.lightGreen,
                labelPadding: const EdgeInsets.all(0.3),
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: "robot-light",
                  color: AppColors.greyColor,
                ),
                tabs: _tabInfo),
            const Expanded(
              child: TabBarView(
                children: [AllTab(), FruitsTab(), VegetablesTab(), FishTab()],
              ),
            )
          ],
        )),
      ),
    );
  }
}
