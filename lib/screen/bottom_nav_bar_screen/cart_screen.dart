import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:u_bazar/model/product_model.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/component/custom_text_style.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductModel>(
      builder: (context, value, child) {
        return ListView.builder(
            itemCount: value.productCart.length,
            itemBuilder: (context, index) {
              return Card(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                  leading: SizedBox(
                    height: 60,
                    width: 60,
                    child:
                        Image.asset(value.productCart[index]["productImage"]),
                  ),
                  title: Text(
                    value.productCart[index]["productName"],
                  ),
                  subtitle: Text(
                    value.productCart[index]["productRprice"],
                    style: textStyle6,
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Provider.of<ProductModel>(context, listen: false)
                            .removeProductFromCart(index);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: AppColors.redColor,
                      )),
                ),
              ));
            });
      },
    );
  }
}
