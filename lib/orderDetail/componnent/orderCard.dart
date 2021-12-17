import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

orderCardDetail() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
            Text(
              "# 202000609",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Amount",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
            Text(
              "SAR 3442.45",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Items",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
            Text(
              "10",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Status",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
            Text(
              "Order Placed",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Date",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
            Text(
              "9 June 2022",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
      ],
    ),
  );
}

/////////////////////////////////////////////////////////////////////////////////////////////

productOrderDetail() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: HexColor("#E7EAF0"),
              offset: const Offset(0, 3),
              spreadRadius: 3,
              blurRadius: 3)
        ]),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            "assests/images/Image 36.png",
            fit: BoxFit.contain,
          ),
        ),
        spaceW(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Blue Striped toped",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#333333")),
            ),
            spaceH(7),
            Text(
              "SAR 399.78",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#4CB8BA")),
            ),
            spaceH(7),
            Text(
              "Qty: 3",
              style: headingStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.5)),
            ),
          ],
        )
      ],
    ),
  );
}

///////////////////////////////////////////////////////////////////////////////////////

paymentDetail() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sub total",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#333333"))),
            Text(
              "SAR 355.00",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#333333")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Tax",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#333333"))),
            Text(
              "SAR 30.00",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#333333")),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping fee",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#333333"))),
            Text(
              "SAR 15.00",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#333333")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("COD charge",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#333333"))),
            Text(
              "SAR 10.00",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#333333")),
            ),
          ],
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Amount paid",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#4CB8BA"))),
            Text(
              "SAR 355.00",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#4CB8BA")),
            ),
          ],
        ),
      ],
    ),
  );
}
