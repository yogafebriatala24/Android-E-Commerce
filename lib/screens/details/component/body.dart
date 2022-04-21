import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:flutter/material.dart';

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
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)
                        ),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    children: const <Widget>[
                      Text("Aristocratic Hand Bag",
                      style: TextStyle(
                      color: Colors.white),
                      ),
                      Text(product.title,
                      style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
            )
        ],
      ),
    );
  }
}