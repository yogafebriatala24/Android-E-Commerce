import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';
class ItemCard extends StatelessWidget {
  final Product product;
  final void Function()? press;
  const ItemCard({
    Key? key, required this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(color: product.color,
              borderRadius: BorderRadius.circular(16)
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image)),
              ),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
              child: Text(
                //products is out demo list
                product.title, 
                style: const TextStyle(color: kTextLightColor),
              ),
            ),
            Text("\$${product.price}", style: const TextStyle(fontWeight: FontWeight.bold),) 
        ],
      ),
    );
  }
}
