import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

import 'componnent/body.dart';

// ignore: use_key_in_widget_constructors
class OrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F5F6F8"),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: Container(
          color: HexColor("#F5F6F8"),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            children: [
              // ignore: prefer_const_constructors
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: HexColor("#4CB8BA"),
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Order Details",
                  style: headingStyle.copyWith(
                      color: HexColor("#515C6F"),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
      body: OrderDetailBody(),
    );
  }
}
