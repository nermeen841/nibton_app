import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/orderDetail/componnent/constant.dart';

import 'componnent/placeOrderConstant.dart';

// ignore: use_key_in_widget_constructors
class PlaceOrder extends StatefulWidget {
  @override
  _PlaceOrderState createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            addressCard(context),
            spaceH(10),
            spaceH(15),
            Text(
              "Your Orders (10)",
              style: headingStyle.copyWith(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            spaceH(15),
            ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) => orderItemCard(),
                separatorBuilder: (context, index) => spaceH(10),
                itemCount: 5),
            spaceH(15),
            paymentDetail(),
            spaceH(15),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: deliverTime(),
            ),
            spaceH(15),
            cancelOrderButton(title: "ORDER NOW", press: () {})
          ],
        ),
      ),
    );
  }
}
