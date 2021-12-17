import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nibton_app/Review/review.dart';
import 'package:nibton_app/Review/write%20review/write_review.dart';
import 'package:nibton_app/cart/componnent/constant.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/productDetail/componnent/color_selection.dart';
import 'package:nibton_app/productDetail/componnent/product_description.dart';
import 'package:nibton_app/productDetail/componnent/similar_product.dart';

import 'cart_wishlist.dart';
import 'image_slider.dart';

// ignore: use_key_in_widget_constructors
class ProductDetailBody extends StatefulWidget {
  @override
  _ProductDetailBodyState createState() => _ProductDetailBodyState();
}

class _ProductDetailBodyState extends State<ProductDetailBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Sldershow(),
        spaceH(15),
        Text(
          "Men's Quartz Analog Watch LTP 1274D-7ADF",
          textAlign: TextAlign.start,
          style: headingStyle.copyWith(
              fontSize: 16,
              height: 1.6,
              fontWeight: FontWeight.w600,
              color: HexColor("#2D2D2D")),
        ),
        spaceH(15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            spaceW(10),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReviewScreen())),
              child: Text(
                "1 Reviews",
                style: headingStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#686868")),
              ),
            ),
            spaceW(7),
            Text(
              "|",
              style: headingStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#686868")),
            ),
            spaceW(7),
            InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WriteReviewScreen())),
              child: Text(
                "Write A Reviews",
                style: headingStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#686868")),
              ),
            ),
          ],
        ),
        spaceH(15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Brand : ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#515C6F")),
            ),
            Text(
              "Casio ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
        spaceH(7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Modal Number : ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#515C6F")),
            ),
            Text(
              "LTP-1274D-7ADF  ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#515C6F")),
            ),
          ],
        ),
        spaceH(7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Availability : ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#515C6F")),
            ),
            Text(
              "In stock ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
        spaceH(20),
        CartWishlistAdd(),
        spaceH(10),
        ColorSelection(),
        spaceH(10),
        ProductDescription(),
        spaceH(20),
        const SimilarProduct(),
        spaceH(20),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: placeOrderButton(
              context: context, title: "SEE ALL", press: () {}),
        )
      ],
    );
  }
}
