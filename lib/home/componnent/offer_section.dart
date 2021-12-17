import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class OffersSection extends StatefulWidget {
  @override
  _OffersSectionState createState() => _OffersSectionState();
}

class _OffersSectionState extends State<OffersSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 170,
      child: ListView.separated(
          primary: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 170,
              height: 170,
              child: Stack(
                children: [
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: Image.asset(
                      "assests/images/Image 33.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Ktichen Utilities",
                          style: headingStyle.copyWith(
                            color: HexColor("#FFBE03"),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      spaceH(10),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Flat 70 % off",
                          style: headingStyle.copyWith(
                            color: HexColor("#40A2A6"),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      spaceH(60),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              color: HexColor("#FFBE03"),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Shop now",
                            style: headingStyle.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => spaceW(10),
          itemCount: 10),
    );
  }
}
