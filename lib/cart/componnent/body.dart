import 'package:flutter/material.dart';
import 'package:nibton_app/checkout/checkout.dart';
import 'package:nibton_app/components/constants.dart';

import 'constant.dart';

// ignore: use_key_in_widget_constructors
class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) => cartItemCard(),
            separatorBuilder: (context, index) => spaceH(10),
            itemCount: 5),
        spaceH(20),
        optionCard(),
        spaceH(20),
        placeOrderButton(
            context: context,
            title: "PLACE THIS ORDER SR 1100.00",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckoutScren())))
      ],
    );
  }

  cartItemCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: HexColor("#E7EAF0"),
                offset: const Offset(0, 3),
                spreadRadius: 3,
                blurRadius: 3)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 110,
              height: 110,
              child: Image.asset(
                "assests/images/Image 37.png",
                fit: BoxFit.contain,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Acer Aspire E",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: HexColor("#515C6F")),
              ),
              Text(
                "SAR 550.00",
                style: headingStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: HexColor("#4CB8BA")),
              ),
              spaceH(15),
              Row(
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
                        width: 25,
                        height: 25,
                        padding: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#5A5A5A")),
                        child: const Center(
                          child: Icon(
                            Icons.minimize,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )),
                  spaceW(15),
                  Text(
                    "$count",
                    style: headingStyle.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: HexColor("#515C6F")),
                  ),
                  spaceW(15),
                  InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: HexColor("#5A5A5A")),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75.0),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.clear, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
