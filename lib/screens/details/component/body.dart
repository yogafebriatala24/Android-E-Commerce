// ignore_for_file: deprecated_member_use

import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details/component/color_and_size.dart';
import 'package:ecommerce/screens/details/component/description.dart';
import 'package:ecommerce/screens/details/component/product_title_with_image.dart';
import 'package:flutter/material.dart';

import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.3),
                    padding: EdgeInsets.only(top: size.height * 0.12, left: kDefaultPaddin),
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)
                        ),
                        ),
                        child: Column(
                          children: <Widget>[
                            ColorAndSize(product: product),
                            SizedBox(height: kDefaultPaddin/2,),
                            Description(product: product),
                            SizedBox(height: kDefaultPaddin/2,),
                            const CounterWithFavBtn(),
                            SizedBox(height: kDefaultPaddin/2,),
                            AddToCart(product: product)
                          ],
                        ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
            )
        ],
      ),
    );
  }
}







