import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class HomeSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cardItem(
                image: "assests/images/categories.svg",
                title: "Accessories",
                color1: "#40A2A6",
                color2: "#4CB8BA",
                imageColor: Colors.white),
            spaceW(15),
            cardItem(
                image: "assests/images/women.svg",
                title: "Women",
                color1: "#FF9000",
                color2: "#FFBE03",
                imageColor: Colors.black),
            spaceW(15),
            cardItem(
                image: "assests/images/category.svg",
                title: "Men",
                color1: "#FF9000",
                color2: "#FFBE03",
                imageColor: Colors.black),
            spaceW(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: HexColor("#E7EAF0"),
                            offset: Offset(0, 3),
                            spreadRadius: 5,
                            blurRadius: 5)
                      ]),
                  // ignore: prefer_const_constructors
                  child: Center(
                      child: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 40,
                  )),
                ),
                spaceH(10),
                Center(
                  child: Text(
                    "See All",
                    style: headingStyle.copyWith(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  cardItem(
      {required String image,
      required String title,
      required String color1,
      required String color2,
      required Color imageColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [HexColor(color1), HexColor(color2)]),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: HexColor("#E7EAF0"),
                      offset: const Offset(0, 3),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: Center(
              child: SvgPicture.asset(
                image,
                color: imageColor,
              ),
            ),
          ),
        ),
        spaceH(10),
        Center(
          child: Text(
            title,
            style: headingStyle.copyWith(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
