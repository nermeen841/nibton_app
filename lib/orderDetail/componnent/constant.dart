import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

deliverTime() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Delivery time",
            style: headingStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: HexColor("#333333"))),
        spaceH(15),
        Text("3 - 5 working days",
            style: headingStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: HexColor("#4CB8BA"))),
      ],
    ),
  );
}

//////////////////////////////////////////////////////////////////////////////////////////////

cancelOrderButton({required String title, required VoidCallback press}) {
  return InkWell(
    onTap: press,
    child: Container(
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              colors: [HexColor("#FF9000"), HexColor("#FFBE03")])),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: HexColor("#333333"))),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [HexColor("#FF9000"), HexColor("#FFBE03")])),
            child: Center(
              child: Icon(
                Icons.keyboard_arrow_right,
                color: HexColor("#FFBE03"),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

//////////////////////////////////////////////////////////////////////////////////////////

deliverAddress() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Shipping Address",
            style: headingStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: HexColor("#4CB8BA"))),
        spaceH(10),
        Text("ASHRAF ELMESHHARY",
            style: headingStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: HexColor("#515C6F"))),
        spaceH(10),
        Text("Saudi Arabia",
            style: headingStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: HexColor("#515C6F").withOpacity(0.5))),
        spaceH(10),
        Text("Riyadh",
            style: headingStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: HexColor("#4CB8BA"))),
      ],
    ),
  );
}
