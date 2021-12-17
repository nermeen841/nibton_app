import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/default_button.dart';

// ignore: use_key_in_widget_constructors
class ContactusBody extends StatefulWidget {
  @override
  _ContactusBodyState createState() => _ContactusBodyState();
}

class _ContactusBodyState extends State<ContactusBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController subject = TextEditingController();
  TextEditingController detail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      primary: true,
      shrinkWrap: true,
      children: [
        Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Do you have any question? feel free to contact us. we will get back to you as soon as possible!",
                  textAlign: TextAlign.start,
                  style: headingStyle.copyWith(
                      fontSize: 14,
                      height: 1.6,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333")),
                ),
                spaceH(15),
                Text(
                  "Subject",
                  textAlign: TextAlign.start,
                  style: headingStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333")),
                ),
                spaceH(15),
                customTextField(
                    title: "",
                    controller: subject,
                    type: TextInputType.text,
                    secure: false),
                spaceH(15),
                Text(
                  "Subject",
                  textAlign: TextAlign.start,
                  style: headingStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333")),
                ),
                spaceH(15),
                multilineTextField(
                    title: "",
                    controller: detail,
                    type: TextInputType.text,
                    secure: false),
                spaceH(40),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: HexColor("#B5994566").withOpacity(0.2),
                        offset: const Offset(0, 3),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ]),
                  width: MediaQuery.of(context).size.width,
                  child: DefaultButton(text: "SUBMIT", press: () {}),
                ),
              ],
            )),
      ],
    );
  }
}
