import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

import 'componnent/body.dart';

// ignore: use_key_in_widget_constructors
class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "MORE", context: context),
      body: MoreBody(),
    );
  }
}
