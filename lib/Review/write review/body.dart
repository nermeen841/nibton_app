import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/default_button.dart';

// ignore: use_key_in_widget_constructors
class WriteRviewBody extends StatefulWidget {
  @override
  _WriteRviewBodyState createState() => _WriteRviewBodyState();
}

class _WriteRviewBodyState extends State<WriteRviewBody> {
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Center(
          child: Text(
            "Thanks you for the trip!",
            style: headingStyle.copyWith(
                color: HexColor("#4CB8BA"),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        spaceH(15),
        Center(
          child: Text(
            "treat you experience. this would be help us continully impove our services.",
            style: headingStyle.copyWith(
                color: HexColor("#515C6F"),
                fontSize: 16,
                height: 1.8,
                fontWeight: FontWeight.w400),
          ),
        ),
        spaceH(30),
        Center(
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            itemSize: 30,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            unratedColor: HexColor("#C9C9C9"),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: HexColor("##FFBE03"),
              size: 10,
            ),
            onRatingUpdate: (rating) {},
          ),
        ),
        spaceH(15),
        Center(
          child: Text(
            "tap to rate",
            style: headingStyle.copyWith(
                color: HexColor("#C9C9C9"),
                fontSize: 21,
                fontWeight: FontWeight.w400),
          ),
        ),
        spaceH(15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: HexColor("#333333")),
            ),
            spaceW(15),
            Center(
              child: Text(
                "ASHRAF ALMASHHARI",
                style: headingStyle.copyWith(
                    color: HexColor("#4CB8BA"),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        spaceH(30),
        Text(
          "Write a Review",
          style: headingStyle.copyWith(
              color: HexColor("#333333"),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        spaceH(15),
        multilineTextField(
            title: "",
            controller: message,
            type: TextInputType.text,
            secure: false),
        spaceH(40),
        Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: DefaultButton(press: () {}, text: "DONE")),
        ),
        spaceH(15),
      ],
    );
  }
}
