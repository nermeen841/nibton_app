import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class OrderSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        primary: true,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        children: [
          Center(
            child: Text("THANKYOU",
                style: headingStyle.copyWith(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#4CB8BA"))),
          ),
          spaceH(7),
          Center(
            child: Text("FOR YOUR ORDER",
                style: headingStyle.copyWith(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#333333"))),
          ),
          spaceH(7),
          Center(
            child: Text("Order number: #SC124535",
                style: headingStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
          ),
          spaceH(40),
          Image.asset("assests/images/thank.png"),
          spaceH(20),
          Center(
            child: Text("ESTIMATED DELIVERY",
                style: headingStyle.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#B59945"))),
          ),
          spaceH(10),
          Center(
            child: Text("Apr 30, 2020",
                style: headingStyle.copyWith(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#333333"))),
          ),
          spaceH(20),
          trackOrderButton(context)
        ],
      ),
    );
  }

  trackOrderButton(context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: HexColor("#B5994565").withOpacity(0.1),
                  offset: const Offset(0, 3),
                  spreadRadius: 3,
                  blurRadius: 3)
            ],
            gradient: LinearGradient(
                colors: [HexColor("#FF9000"), HexColor("#FFBE03")])),
        child: Center(
          child: Text("TRACK YOUR ORDER HERE",
              style: headingStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#333333"))),
        ),
      ),
    );
  }
}
