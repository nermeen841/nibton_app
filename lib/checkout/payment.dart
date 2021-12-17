import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/cart/componnent/constant.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/orderSuccess/orderSuccess.dart';

// ignore: use_key_in_widget_constructors
class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      children: [
        paymentTypeSelection(),
        spaceH(40),
        placeOrderButton(
            context: context,
            title: "CONTINUE PAYMENT",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderSuccessScreen())))
      ],
    );
  }

  paymentTypeSelection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 3),
              spreadRadius: 3,
              blurRadius: 3,
              color: HexColor("#5858581F").withOpacity(0.1))
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assests/images/Forma 1 copy 11.svg"),
              spaceW(7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Cash on delivery",
                    style: headingStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: HexColor("#2D2C2C")),
                  ),
                  spaceH(5),
                  Text(
                    "SAR 12 will be added on COD",
                    style: headingStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: HexColor("#6A737C").withOpacity(0.6)),
                  ),
                ],
              ),
              const Spacer(),
              Radio(value: "value", groupValue: "", onChanged: (value) {})
            ],
          ),
          spaceH(10),
          Divider(
            thickness: 1,
            color: HexColor("#E3E1E1"),
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assests/images/Forma 1 copy 12.svg"),
              spaceW(7),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Visa/Master/MADA Card",
                    style: headingStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: HexColor("#2D2C2C")),
                  ),
                  spaceH(5),
                  Text(
                    ".... ...... ...... 567",
                    style: headingStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: HexColor("#6A737C").withOpacity(0.6)),
                  ),
                ],
              ),
              const Spacer(),
              Radio(value: "value", groupValue: "", onChanged: (value) {})
            ],
          ),
        ],
      ),
    );
  }
}
