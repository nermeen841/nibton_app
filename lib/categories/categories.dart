import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

import 'componnent/body.dart';

// ignore: use_key_in_widget_constructors
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "CATEGORIES", context: context),
      body: CategoryBody(),
    );
  }
}
