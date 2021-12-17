import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nibton_app/Review/write%20review/write_review.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/default_button.dart';

import 'constant.dart';

// ignore: use_key_in_widget_constructors
class ReviewBody extends StatefulWidget {
  @override
  _ReviewBodyState createState() => _ReviewBodyState();
}

class _ReviewBodyState extends State<ReviewBody> {
  String value = '';
  List<String> items = ["All", "Most relevent", "Show less"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filter by : ",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#2D2D2D")),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: HexColor("#7070704D"))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      value,
                      style: headingStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: HexColor("#C9C9C9")),
                    ),
                  ),
                  PopupMenuButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: HexColor("#C9C9C9"),
                      ),
                      onSelected: (val) {
                        setState(() {
                          value = val.toString();
                        });
                      },
                      itemBuilder: (context) {
                        return items.map((choice) {
                          return PopupMenuItem(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      }),
                ],
              ),
            ),
          ],
        ),
        spaceH(15),
        ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) => reviewContent(),
            separatorBuilder: (context, index) => spaceH(10),
            itemCount: 5),
        spaceH(30),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: DefaultButton(
              text: "WRITE REVIEW",
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WriteReviewScreen()))),
        )
      ],
    );
  }
}
