import 'package:flutter/material.dart';

class ProductModel extends ChangeNotifier {
  //product list
  final List _productList = [
    {
      "productImage": "assets/images/broccoli-flower.png",
      "productName": "Broccoli flower",
      "productRprice": "৳ 60",
      "productDprice": "৳ 60"
    },
    {
      "productImage": "assets/images/pomegranate.png",
      "productName": "Pomegranate",
      "productRprice": "৳ 250",
      "productDprice": "৳ 300"
    },
    {
      "productImage": "assets/images/green-apple.png",
      "productName": "Green Apple",
      "productRprice": "৳ 200",
      "productDprice": "৳ 260"
    },
    {
      "productImage": "assets/images/green-capsicum.png",
      "productName": "Green Capsicum",
      "productRprice": "৳ 150",
      "productDprice": "৳ 160"
    },
    {
      "productImage": "assets/images/red-capsicum.png",
      "productName": "Red Capsicum",
      "productRprice": "৳ 160",
      "productDprice": "৳ 200"
    },
    {
      "productImage": "assets/images/capsicum.png",
      "productName": "Capsicum",
      "productRprice": "৳ 150",
      "productDprice": "৳ 160"
    },
  ];

  List get productList => _productList;

  //product cart list

  final List _productCart = [];

  List get productCart => _productCart;

//add product to cart
  void addProductToCart(int index) {
    _productCart.add(_productList[index]);

    notifyListeners();
  }

//remove from cart
  void removeProductFromCart(int index) {
    productCart.removeAt(index);
    notifyListeners();
  }

//favouirt list

  final List _favouriteList = [];

  List get favouriteList => _favouriteList;

  //add product to favouirte
  void addProductToFavourite(int index) {
    _favouriteList.add(_productList[index]);

    notifyListeners();
  }

//remove product to favouirt
  void removeProductFromFavouriteList(int index) {
    _favouriteList.removeAt(index);
    notifyListeners();
  }
}
