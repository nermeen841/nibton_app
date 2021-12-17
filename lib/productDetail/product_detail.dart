import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/cart/cart.dart';
import 'package:nibton_app/components/constants.dart';

import 'componnent/body.dart';

// ignore: use_key_in_widget_constructors
class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F6F8"),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: Container(
          color: HexColor("#F5F6F8"),
          // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: HexColor("#40A2A6"),
                      size: 40,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 15, right: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartScreen())),
                      child: SvgPicture.asset("assests/images/Cart.svg")),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ProductDetailBody(),
    );
  }
}
