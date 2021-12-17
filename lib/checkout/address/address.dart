import 'package:flutter/material.dart';
import 'package:nibton_app/addAddress/addAddress.dart';
import 'package:nibton_app/checkout/address/userAddresses.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: HexColor("#4CB8BA"))),
              child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: HexColor("#333333"),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: HexColor("#4CB8BA")),
                  unselectedLabelStyle: headingStyle.copyWith(
                      fontSize: 14,
                      color: HexColor("#333333"),
                      fontWeight: FontWeight.w400),
                  labelStyle: headingStyle.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                  tabs: const [
                    Text("Saved Address"),
                    Text("New address"),
                  ]),
            ),
          ),
          spaceH(20),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.85,
            child: TabBarView(
              controller: _tabController,
              children: [
                UserAddress(),
                AddNewaddressScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
