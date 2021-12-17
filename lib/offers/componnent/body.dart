import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OffersBody extends StatefulWidget {
  @override
  _OffersBodyState createState() => _OffersBodyState();
}

class _OffersBodyState extends State<OffersBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.builder(
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: Image.asset(
                "assests/images/Ad.png",
                fit: BoxFit.cover,
              ),
            );
          },
          // separatorBuilder: (context, index) => spaceH(10),
          itemCount: 10),
    );
  }
}
