import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/checkout/address/address.dart';
import 'package:nibton_app/components/constants.dart';

import '../payment.dart';
import '../placeOrder.dart';

// ignore: use_key_in_widget_constructors
class CheckoutBody extends StatefulWidget {
  @override
  _CheckoutBodyState createState() => _CheckoutBodyState();
}

class _CheckoutBodyState extends State<CheckoutBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.black,
            child: TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                gradient: LinearGradient(
                    colors: [HexColor("#FF9000"), HexColor("#FFBE03")]),
              ),
              tabs: [
                SvgPicture.asset(
                  "assests/images/location.svg",
                  color: HexColor("#E7EAF0"),
                ),
                SvgPicture.asset(
                  "assests/images/Giftbox-Hands-Purchase-Buy-Commerce.svg",
                  color: HexColor("#E7EAF0"),
                ),
                SvgPicture.asset(
                  "assests/images/credit-card.svg",
                  color: HexColor("#E7EAF0"),
                ),
              ],
            )),
        // ignore: prefer_const_constructors
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(
                controller: _tabController,
                children: [AddressScreen(), PlaceOrder(), PaymentScreen()])),
      ],
    );
  }
}
