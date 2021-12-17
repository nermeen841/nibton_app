import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

import 'constant.dart';
import 'orderCard.dart';

// ignore: use_key_in_widget_constructors
class OrderDetailBody extends StatefulWidget {
  @override
  _OrderDetailBodyState createState() => _OrderDetailBodyState();
}

class _OrderDetailBodyState extends State<OrderDetailBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        orderCardDetail(),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Items",
                  style: headingStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                spaceW(7),
                Text(
                  "(2)",
                  style: headingStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#C9C9C9")),
                ),
              ],
            ),
            Text(
              "Invoice",
              style: headingStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#000000").withOpacity(0.5)),
            ),
          ],
        ),
        spaceH(10),
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) => productOrderDetail(),
            separatorBuilder: (context, index) => spaceH(10),
            itemCount: 5),
        spaceH(15),
        Text(
          "Summary details",
          style: headingStyle.copyWith(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        spaceH(15),
        paymentDetail(),
        spaceH(15),
        deliverTime(),
        spaceH(15),
        cancelOrderButton(press: () {}, title: "ORDER CANCELL"),
        spaceH(15),
        deliverAddress()
      ],
    );
  }
}
