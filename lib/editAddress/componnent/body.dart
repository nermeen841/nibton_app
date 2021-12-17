import 'package:flutter/material.dart';
import 'package:nibton_app/cart/componnent/constant.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class EditaddressBody extends StatefulWidget {
  @override
  _EditaddressBodyState createState() => _EditaddressBodyState();
}

class _EditaddressBodyState extends State<EditaddressBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController addressTtile = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController detail = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController stereet = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                headerText(title: "Address Title"),
                spaceH(10),
                customTextField(
                    title: 'Address Title',
                    controller: addressTtile,
                    type: TextInputType.text,
                    secure: false),
                spaceH(10),
                headerText(title: "Full Name"),
                spaceH(10),
                customTextField(
                    title: "Full Name",
                    controller: fullName,
                    type: TextInputType.name,
                    secure: false),
                spaceH(10),
                headerText(title: "Email"),
                spaceH(10),
                customTextField(
                    title: "Email",
                    controller: email,
                    type: TextInputType.emailAddress,
                    secure: false),
                spaceH(10),
                headerText(title: "Address Location Details"),
                spaceH(10),
                multilineTextField(
                    title: "Address Location Details",
                    controller: detail,
                    type: TextInputType.text,
                    secure: false),
                spaceH(10),
                headerText(title: "District"),
                spaceH(10),
                customTextField(
                    title: "District",
                    controller: district,
                    type: TextInputType.text,
                    secure: false),
                spaceH(10),
                headerText(title: "City"),
                spaceH(10),
                customTextField(
                    title: "City",
                    controller: city,
                    type: TextInputType.text,
                    secure: false),
                spaceH(10),
                headerText(title: "Street name"),
                spaceH(10),
                customTextField(
                    title: "Street name",
                    controller: stereet,
                    type: TextInputType.streetAddress,
                    secure: false),
                spaceH(10),
                headerText(title: "Phone number"),
                spaceH(10),
                customTextField(
                    title: "Phone number",
                    controller: phoneNumber,
                    type: TextInputType.phone,
                    secure: false),
                spaceH(30),
                placeOrderButton(
                    context: context, title: "SAVE ADDRESS", press: () {})
              ],
            ))
      ],
    );
  }
}
