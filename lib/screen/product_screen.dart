import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:u_bazar/model/product_model.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/component/custom_text_style.dart';
import 'package:u_bazar/screen/bottom_nav_bar_screen/cart_screen.dart';
import 'package:u_bazar/component/custom_app_bar.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.catName});

  final String catName;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          children: [
            Consumer<ProductModel>(
              builder: (context, value, child) {
                return CustomAppBar(
                  actionOnTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartScreen()));
                  },
                  itemNo: value.productCart.length,
                  leadingOnTap: () {
                    Navigator.pop(context);
                  },
                  action: "assets/images/shopping-cart.png",
                  title: widget.catName,
                  leading: "assets/images/back-arrow.png",
                );
              },
            ),
            Card(
                elevation: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 43,
                  color: AppColors.whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "6 Products Found",
                        style: textStyle5,
                      ),
                      Image.asset(
                        "assets/images/filter.png",
                        height: 20,
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 8,
            ),
            Expanded(child: Consumer<ProductModel>(
              builder: (context, value, child) {
                return GridView.builder(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 13, right: 13),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisExtent: 215,
                            maxCrossAxisExtent: 200,
                            crossAxisSpacing: 13,
                            mainAxisSpacing: 13),
                    itemCount: value.productList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Stack(children: [
                          Positioned(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 130,
                                  child: Image.asset(
                                    value.productList[index]["productImage"],
                                    fit: BoxFit.fill,
                                    height: 120,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  value.productList[index]["productName"]
                                      .toString(),
                                  style: textStyle6,
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      value.productList[index]["productDprice"],
                                      style: const TextStyle(
                                          fontFamily: "roboto",
                                          fontSize: 14,
                                          color: AppColors.darkGreyColor,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationColor: AppColors.redColor,
                                          decorationThickness: 3),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      value.productList[index]["productRprice"],
                                      style: const TextStyle(
                                        fontFamily: "roboto-bold",
                                        fontSize: 16,
                                        color: AppColors.lightGreen,
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                    child: value.productCart
                                            .contains(value.productList[index])
                                        ? Container(
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                              color: AppColors.whiteColor,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                const Divider(
                                                  thickness: 1,
                                                  color: AppColors.lightGreen,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 15),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {},
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: AppColors
                                                              .lightGreen,
                                                        ),
                                                      ),
                                                      const VerticalDivider(
                                                        thickness: 1,
                                                        indent: 7.5,
                                                        color: AppColors
                                                            .lightGreen,
                                                      ),
                                                      const Text(
                                                        "10",
                                                        style: TextStyle(
                                                            color: AppColors
                                                                .lightGreen,
                                                            fontSize: 18,
                                                            fontFamily:
                                                                "roboto-bold"),
                                                      ),
                                                      const VerticalDivider(
                                                        thickness: 1,
                                                        indent: 7.5,
                                                        color: AppColors
                                                            .lightGreen,
                                                      ),
                                                      InkWell(
                                                        onTap: () {},
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: AppColors
                                                              .lightGreen,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ))
                                        : InkWell(
                                            onTap: () {
                                              Provider.of<ProductModel>(context,
                                                      listen: false)
                                                  .addProductToCart(index);
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8),
                                                ),
                                              ),
                                              child: const Column(
                                                children: [
                                                  Divider(
                                                    thickness: 1,
                                                    color: AppColors.lightGreen,
                                                  ),
                                                  Text(
                                                    "Add to cart",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            "roboto-bold",
                                                        color: AppColors
                                                            .lightGreen),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )),
                              ],
                            ),
                          ),
                          Positioned(
                              right: 10,
                              top: 10,
                              child: value.favouriteList
                                      .contains(value.productList[index])
                                  ? InkWell(
                                      onTap: () {
                                        Provider.of<ProductModel>(context,
                                                listen: false)
                                            .removeProductFromFavouriteList(
                                                index);
                                      },
                                      child: Image.asset(
                                        "assets/images/fav-icon.png",
                                        height: 25,
                                      ))
                                  : InkWell(
                                      onTap: () {
                                        Provider.of<ProductModel>(context,
                                                listen: false)
                                            .addProductToFavourite(index);
                                      },
                                      child: Image.asset(
                                        "assets/images/fav-icon-outline.png",
                                        height: 25,
                                      )))
                        ]),
                      );
                    });
              },
            )),
          ],
        ),
      ),
    );
  }
}
