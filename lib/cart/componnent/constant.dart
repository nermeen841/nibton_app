import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/components/constants.dart';

optionCard() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
        color: HexColor("#2D2D2D"), borderRadius: BorderRadius.circular(5)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            "Add items worth SR 60.00 more for FREE delivery",
            maxLines: 2,
            style: headingStyle.copyWith(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        SvgPicture.asset("assests/images/shipping.svg"),
      ],
    ),
  );
}

//////////////////////////////////////////////////////////////////////////////////////

placeOrderButton(
    {required context, required String title, required VoidCallback press}) {
  return InkWell(
    onTap: press,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: HexColor("#B5994565").withOpacity(0.3),
                offset: const Offset(0, 3),
                spreadRadius: 3,
                blurRadius: 3)
          ],
          gradient: LinearGradient(
              colors: [HexColor("#FF9000"), HexColor("#FFBE03")])),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(title,
                style: headingStyle.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#2D2D2D")),
            child: Center(
              child: Icon(
                Icons.keyboard_arrow_right,
                color: HexColor("#FFBE03"),
                size: 20,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
