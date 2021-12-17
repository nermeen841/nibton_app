import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

import 'componnent/body.dart';

class AuthniticationScreen extends StatelessWidget {
  const AuthniticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [HexColor("#40A2A6"), HexColor("#4CB8BA")])),
      // ignore: prefer_const_constructors
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const AuthniticationBody(),
      ),
    );
  }
}
