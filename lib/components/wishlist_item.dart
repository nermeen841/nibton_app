import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'addCart.dart';
import 'constants.dart';

// ignore: use_key_in_widget_constructors
class WishlistItem extends StatefulWidget {
  @override
  _WishlistItemState createState() => _WishlistItemState();
}

class _WishlistItemState extends State<WishlistItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: HexColor("#E7EAF0"),
            offset: const Offset(0, 3),
            spreadRadius: 3,
            blurRadius: 3)
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 145,
            height: 145,
            child: Stack(
              children: [
                SizedBox(
                    width: 145,
                    height: 145,
                    child: Image.asset(
                      "assests/images/Image 37.png",
                      fit: BoxFit.contain,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 30,
                        margin: const EdgeInsets.only(right: 70),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          HexColor("#FF9000"),
                          HexColor("#FFBE03")
                        ])),
                        child: Center(
                          child: Text(
                            "New",
                            style: headingStyle.copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset("assests/images/close.svg"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text(
            "Acer Aspire E",
            style: headingStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: HexColor("#515C6F")),
          ),
          spaceH(10),
          Row(
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                itemSize: 15,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                unratedColor: HexColor("#C9C9C9"),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: HexColor("#FFBE03"),
                  size: 10,
                ),
                onRatingUpdate: (rating) {},
              ),
              spaceW(7),
              Text(
                "( 4.5 )",
                style: headingStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#C9C9C9")),
              ),
            ],
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SAR 270",
                style: headingStyle.copyWith(
                    color: HexColor("#4CB8BA"),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              spaceW(15),
              Text(
                "SAR 2000",
                style: headingStyle.copyWith(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#C9C9C9")),
              ),
            ],
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.favorite_outline,
                  color: HexColor("#FFBE03"),
                ),
              ),
              AddtoCartButton()
            ],
          ),
        ],
      ),
    );
  }
}
