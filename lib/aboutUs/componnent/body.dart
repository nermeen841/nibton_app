import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class AboutusBody extends StatefulWidget {
  @override
  _AboutusBodyState createState() => _AboutusBodyState();
}

class _AboutusBodyState extends State<AboutusBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      children: [
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.",
          textAlign: TextAlign.start,
          style: headingStyle.copyWith(
              fontSize: 16,
              height: 1.7,
              fontWeight: FontWeight.w400,
              color: HexColor("#7E7E7E")),
        ),
        spaceH(20),
        Align(
          alignment: Alignment.centerLeft,
          child: headerText(title: "Connect with us"),
        ),
        spaceH(15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset("assests/images/facebook.svg"),
            ),
            spaceW(15),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset("assests/images/twitter.svg"),
            ),
            spaceW(15),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset("assests/images/instagram-sketched.svg"),
            ),
          ],
        ),
      ],
    );
  }
}
