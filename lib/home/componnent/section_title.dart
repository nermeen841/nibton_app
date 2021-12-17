import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const SectionTitle({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#171717")),
            ),
            InkWell(
                onTap: press,
                child: Text(
                  "See All",
                  style: headingStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: HexColor("#171717")),
                )),
          ]),
    );
  }
}
