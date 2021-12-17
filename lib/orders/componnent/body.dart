import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/orderDetail/orderDetail.dart';

// ignore: use_key_in_widget_constructors
class OrdersBody extends StatefulWidget {
  @override
  _OrdersBodyState createState() => _OrdersBodyState();
}

class _OrdersBodyState extends State<OrdersBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.separated(
          itemBuilder: (context, index) => orderCard(),
          separatorBuilder: (context, index) => spaceH(10),
          itemCount: 10),
    );
  }

  orderCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order",
                  style: headingStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333"))),
              Text(
                "# 202000609",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#4CB8BA")),
              ),
            ],
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Amount",
                  style: headingStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333"))),
              Text(
                "SAR 3442.45",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#4CB8BA")),
              ),
            ],
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Items",
                  style: headingStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333"))),
              Text(
                "10",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#4CB8BA")),
              ),
            ],
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Status",
                  style: headingStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333"))),
              Text(
                "Order Placed",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#4CB8BA")),
              ),
            ],
          ),
          spaceH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Date",
                  style: headingStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#333333"))),
              Text(
                "9 June 2022",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#4CB8BA")),
              ),
            ],
          ),
          spaceH(20),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderDetailScreen()));
              },
              child: Container(
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                decoration: BoxDecoration(
                    color: HexColor("#2D2D2D"),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "Order details",
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
