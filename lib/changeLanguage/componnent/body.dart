import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/default_button.dart';

// ignore: use_key_in_widget_constructors
class LanguageBody extends StatefulWidget {
  @override
  _LanguageBodyState createState() => _LanguageBodyState();
}

class _LanguageBodyState extends State<LanguageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: headerText(title: "Choose your Prefrred Language"),
        ),
        spaceH(20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: headerText(title: "Please select your language"),
        ),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#333333"),
        ),
        spaceH(10),
        Center(
          child: RadioListTile(
            value: "",
            groupValue: "",
            onChanged: (value) {},
            title: Text(
              "اللغه العربية",
              style: headingStyle.copyWith(
                  color: HexColor("#515C6F"),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#333333"),
        ),
        spaceH(10),
        Center(
          child: RadioListTile(
            value: "",
            groupValue: "",
            onChanged: (value) {},
            title: Text(
              "English Language",
              style: headingStyle.copyWith(
                  color: HexColor("#515C6F"),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#333333"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child:
              Center(child: DefaultButton(text: "SAVE CHANGES", press: () {})),
        ),
      ],
    );
  }
}
