import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/editAddress/editAddress.dart';

addressCard(context) {
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping Address",
              style: headingStyle.copyWith(
                  color: HexColor("#4CB8BA"),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditAddressScreen()));
              },
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 3),
                            color: HexColor("#4CB8BA").withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 3),
                      ],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "EDIT",
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ))),
            ),
          ],
        ),
        Text(
          "ASHRAf ALMASHHARI",
          style: headingStyle.copyWith(
              color: HexColor("#515C6F"),
              fontSize: 17,
              fontWeight: FontWeight.w700),
        ),
        Text(
          "Saudi Arabya",
          style: headingStyle.copyWith(
              color: HexColor("#515C6F").withOpacity(0.5),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        Text(
          "Riyadh",
          style: headingStyle.copyWith(
              color: HexColor("#4CB8BA"),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

///////////////////////////////////////////////////////////////////////////////////////

orderItemCard() {
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
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
                Text(
                  "Qty: 3",
                  style: headingStyle.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: HexColor("#4CB8BA")),
                ),
              ],
            ),
          ]));
}
//////////////////////////////////////////////////////////////////////////////////////

paymentDetail() {
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
          blurRadius: 3,
        )
      ],
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment summary",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#333333")),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Edit",
                style: headingStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: HexColor("#4CB8BA")),
              ),
            ),
          ],
        ),
        spaceH(7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#333333")),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "SAR 11.00",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: HexColor("#333333")),
              ),
            ),
          ],
        ),
        spaceH(7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery charge",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#333333")),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Free",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: HexColor("#4CB8BA")),
              ),
            ),
          ],
        ),
        spaceH(7),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Amount",
              style: headingStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#4CB8BA")),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "SAR - 599.99",
                style: headingStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#4CB8BA")),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
