import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class ColorSelection extends StatefulWidget {
  @override
  _ColorSelectionState createState() => _ColorSelectionState();
}

class _ColorSelectionState extends State<ColorSelection> {
  List color = [
    HexColor("#ED5199"),
    HexColor("#FF8C69"),
    HexColor("#67B5F7"),
    HexColor("#FFFFFF"),
    HexColor("#C9C9C9"),
    HexColor("#3E3A3A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "SELECT COLOR",
          style: headingStyle.copyWith(
              fontSize: 12,
              color: HexColor("#515C6F"),
              fontWeight: FontWeight.w600),
        ),
        spaceH(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
              color.length,
              (index) => Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: color[index]),
                  )),
        )
      ],
    );
  }
}
