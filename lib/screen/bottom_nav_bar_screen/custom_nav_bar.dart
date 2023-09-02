import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/screen/bottom_nav_bar_screen/cart_screen.dart';
import 'package:u_bazar/screen/bottom_nav_bar_screen/fav_screen.dart';
import 'package:u_bazar/screen/home_screen.dart';
import 'package:u_bazar/screen/bottom_nav_bar_screen/profile_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buldScreen() {
    return [
      const HoemScreen(),
      const CartScreen(),
      const FavScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navItem() {
    return [
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepGreen,
          inactiveColorPrimary: AppColors.blackColor,
          title: "Home",
          icon: const ImageIcon(AssetImage(
            "assets/images/home-icon.png",
          ))),
      PersistentBottomNavBarItem(
        activeColorPrimary: AppColors.deepGreen,
        inactiveColorPrimary: AppColors.blackColor,
        title: "Cart",
        icon: const ImageIcon(
          AssetImage("assets/images/cart-icon.png"),
        ),
      ),
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepGreen,
          inactiveColorPrimary: AppColors.blackColor,
          title: "Favourite",
          icon: const ImageIcon(
              AssetImage("assets/images/fav-icon-outline.png"))),
      PersistentBottomNavBarItem(
          activeColorPrimary: AppColors.deepGreen,
          inactiveColorPrimary: AppColors.blackColor,
          title: "Me",
          icon: const ImageIcon(AssetImage("assets/images/person-icon.png")))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: controller,
      navBarHeight: 68,
      context,
      screens: _buldScreen(),
      items: _navItem(),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
