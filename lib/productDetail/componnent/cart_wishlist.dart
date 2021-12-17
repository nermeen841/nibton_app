import 'package:flutter/material.dart';
import 'package:nibton_app/cart/cart.dart';
import 'package:nibton_app/cart/componnent/constant.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/wishlist/wishlist.dart';

// ignore: use_key_in_widget_constructors
class CartWishlistAdd extends StatefulWidget {
  @override
  _CartWishlistAddState createState() => _CartWishlistAddState();
}

class _CartWishlistAddState extends State<CartWishlistAdd> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "SAR 350.00",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#4CB8BA")),
            ),
            spaceW(5),
            Text(
              "|",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#C9C9C9")),
            ),
            spaceW(5),
            Text(
              "SAR 400.00",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#C9C9C9")),
            ),
            const Spacer(),
            SizedBox(
              width: 160,
              child: placeOrderButton(
                  context: context,
                  title: "ADD TO CART",
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()))),
            ),
          ],
        ),
        spaceH(10),
        Row(
          children: [
            quantity(),
            const Spacer(),
            SizedBox(
              width: 160,
              child: placeOrderButton(
                  context: context,
                  title: "ADD TO Wishlist",
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WishlistScreen()))),
            ),
          ],
        )
      ],
    );
  }

  quantity() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              count--;
            });
            if (count == 1) {
              setState(() {
                count = 1;
              });
            }
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#5A5A5A")),
            child: Center(
              child: Text(
                "-",
                style: headingStyle.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        spaceW(10),
        Text(
          "$count",
          style: headingStyle.copyWith(
              fontSize: 22,
              color: HexColor("#6A6A69"),
              fontWeight: FontWeight.w600),
        ),
        spaceW(10),
        InkWell(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#5A5A5A")),
            child: const Center(
                child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            )),
          ),
        ),
      ],
    );
  }
}
