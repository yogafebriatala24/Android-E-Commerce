// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({ Key? key }) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,press: () { 
            if (numOfItems > 1) {
              setState(() {
              numOfItems--;
            });
            }
          }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin/2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context)
            .textTheme.headline6,
            ),
        ),
        buildOutlineButton(icon: Icons.add, press: (){
          setState(() {
            numOfItems++;
          });
        })
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, void Function()? press}) {
    return SizedBox(
        width: 40 ,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
            ),
          onPressed: press,
          child: Icon(icon),
        ),
      );
  }
}