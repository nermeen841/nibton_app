import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/default_button.dart';
import 'package:nibton_app/resetPassword/resetPass.dart';

class ForgetPassBody extends StatefulWidget {
  const ForgetPassBody({Key? key}) : super(key: key);

  @override
  _ForgetPassBodyState createState() => _ForgetPassBodyState();
}

class _ForgetPassBodyState extends State<ForgetPassBody> {
  TextEditingController phone = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: SvgPicture.asset("assests/images/logo.svg")),
            spaceH(40),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        "Forgot Password",
                        style: headingStyle.copyWith(
                          color: HexColor("#4CB8BA"),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      width: 39,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: HexColor("#4CB8BA"),
                      ),
                    ),
                    spaceH(15),
                    const Divider(),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "Enter the email address you used to create your account and we will email you a link to reset your password",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        style: headingStyle.copyWith(
                            color: HexColor('#AEAEAE'),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    spaceH(30),
                    phoneEmailTextfield(),
                    spaceH(30),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: DefaultButton(
                            text: "RESET",
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ResetPasswordScreen()));
                            }))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  phoneEmailTextfield() {
    return TextFormField(
      controller: phone,
      keyboardType: TextInputType.text,
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
}
