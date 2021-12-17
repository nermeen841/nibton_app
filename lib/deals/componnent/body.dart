import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/home/componnent/deals.dart';

// ignore: use_key_in_widget_constructors
class DealsBody extends StatefulWidget {
  @override
  _DealsBodyState createState() => _DealsBodyState();
}

class _DealsBodyState extends State<DealsBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.separated(
          primary: true,
          shrinkWrap: true,
          itemBuilder: (context, index) => DealsCard(),
          separatorBuilder: (context, index) => spaceH(10),
          itemCount: 10),
    );
  }
}
