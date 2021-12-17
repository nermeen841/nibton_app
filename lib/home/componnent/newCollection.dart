import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class OurCollection extends StatefulWidget {
  @override
  _OurCollectionState createState() => _OurCollectionState();
}

class _OurCollectionState extends State<OurCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 155,
      child: ListView.separated(
          primary: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: HexColor("#E7EAF0"),
                  offset: Offset(0, 3),
                  spreadRadius: 3,
                  blurRadius: 3,
                )
              ]),
              child: Column(children: [
                SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset(
                    "assests/images/Image 32.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 106,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: HexColor("#40A2A6"),
                  child: Center(
                    child: Text(
                      "Omega",
                      style: headingStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ]),
            );
          },
          separatorBuilder: (context, index) => spaceW(10),
          itemCount: 10),
    );
  }
}
