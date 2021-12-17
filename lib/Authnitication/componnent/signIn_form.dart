import 'package:flutter/material.dart';
import 'package:nibton_app/Authnitication/forgetPassword/forget_password.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/customBottomnav.dart';
import 'package:nibton_app/components/default_button.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

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
                "Welcome , Please Login to your Account ",
                textAlign: TextAlign.start,
                style: headingStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            spaceH(20),
            phoneEmailTextfield(),
            spaceH(15),
            passwordTextfield(),
            spaceH(20),
            // ignore: prefer_const_constructors
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPasswordScreen()));
                },
                child: Text(
                  "Forget Password ? ",
                  style: headingStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: HexColor("#515C6F")),
                ),
              ),
            ),
            spaceH(20),
            DefaultButton(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomBottomNav()));
              },
              text: "SIGN IN",
            ),
          ],
        ),
      ),
    );
  }

  phoneEmailTextfield() {
    return TextFormField(
      controller: email,
      keyboardType: TextInputType.text,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          hintText: "Email id phone number",
          hintStyle: headingStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor("#7E7E7E")),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: HexColor("#707070A6")))),
    );
  }

  passwordTextfield() {
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
}
