import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/customBottomnav.dart';
import 'package:nibton_app/components/default_button.dart';

// ignore: use_key_in_widget_constructors
class ResetPasswordBody extends StatefulWidget {
  @override
  _ResetPasswordBodyState createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController currentPass = TextEditingController();
  TextEditingController newpass = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: [
        Text(
          "Current Password",
          style: headingStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: HexColor("#7E7E7E")),
        ),
        spaceH(15),
        customTextField(
            title: "Current Password",
            controller: currentPass,
            type: TextInputType.text,
            secure: true),
        spaceH(15),
        Text(
          "New Password",
          style: headingStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: HexColor("#7E7E7E")),
        ),
        spaceH(15),
        customTextField(
            title: "New Password",
            controller: currentPass,
            type: TextInputType.text,
            secure: true),
        spaceH(15),
        Text(
          "Confirm Password",
          style: headingStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: HexColor("#7E7E7E")),
        ),
        spaceH(15),
        customTextField(
            title: "Confirm Password",
            controller: currentPass,
            type: TextInputType.text,
            secure: true),
        spaceH(30),
        DefaultButton(
            text: "SET PASSWORD",
            press: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomBottomNav())))
      ],
    );
  }
}
