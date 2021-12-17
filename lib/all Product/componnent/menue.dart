import 'package:flutter/material.dart';
import 'package:nibton_app/cart/componnent/constant.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/orderDetail/componnent/constant.dart';

// ignore: use_key_in_widget_constructors
class MenueFilter extends StatefulWidget {
  @override
  _MenueFilterState createState() => _MenueFilterState();
}

class _MenueFilterState extends State<MenueFilter> {
  RangeValues _currentRangeValues = const RangeValues(0, 1500);

  // ignore: unused_element
  static String _valueToString(double value) {
    return value.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0.0,
      child: ListView(
        primary: true,
        shrinkWrap: true,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              HexColor("#40A2A6"),
              HexColor("#4CB8BA"),
            ])),
            child: Text(
              "Filter by",
              style: headingStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Sort by",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#B59945")),
            ),
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Old",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#2D2D2D")),
            ),
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "New",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#2D2D2D")),
            ),
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Price : Low to high",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#2D2D2D")),
            ),
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "Price : High to low",
              style: headingStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#2D2D2D")),
            ),
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              "See All ( 20 )",
              style: headingStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor("#4CB8BA")),
            ),
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: headingStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: HexColor("#B59945")),
                ),
                Text(
                  "SAR 0 - 1500",
                  style: headingStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: HexColor("#2D2D2D")),
                ),
              ],
            ),
          ),
          spaceH(10),
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 1500,
            divisions: 10,
            activeColor: HexColor("#FFBE03"),
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          Divider(
            thickness: 1,
            color: HexColor("#E1E1E1"),
          ),
          spaceH(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: placeOrderButton(
                  title: "APPLY FILTERS", press: () {}, context: context),
            ),
          ),
          spaceH(30),
        ],
      ),
    );
  }
}
