import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/customBottomnav.dart';
import 'package:nibton_app/components/default_button.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            spaceH(15),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Welcome , Please Create your Account ",
                textAlign: TextAlign.start,
                style: headingStyle.copyWith(
                    color: HexColor("#AEAEAE"),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            spaceH(20),
            nameTextfield(),
            spaceH(15),
            phoneTextfield(),
            spaceH(15),
            passwordfield(),
            spaceH(15),
            confirmpasswordTextfield(),
            spaceH(20),
            DefaultButton(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomBottomNav()));
              },
              text: "SIGN UP",
            ),
          ],
        ),
      ),
    );
  }

  nameTextfield() {
    return TextFormField(
      controller: name,
      keyboardType: TextInputType.text,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "Full name",
          hintStyle: headingStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor("#7E7E7E")),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: HexColor("#707070A6")))),
    );
  }

  phoneTextfield() {
    return TextFormField(
      controller: phone,
      keyboardType: TextInputType.phone,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "Mobile Number",
          hintStyle: headingStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor("#7E7E7E")),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: HexColor("#707070A6")))),
    );
  }

  passwordfield() {
    return TextFormField(
      controller: pass,
      obscureText: true,
      keyboardType: TextInputType.text,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "Password",
          hintStyle: headingStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor("#7E7E7E")),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: HexColor("#707070A6")))),
    );
  }

  confirmpasswordTextfield() {
    return TextFormField(
      controller: confirmpass,
      obscureText: true,
      keyboardType: TextInputType.text,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "Confirm Password",
          hintStyle: headingStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor("#7E7E7E")),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: HexColor("#707070A6")))),
    );
  }
}
