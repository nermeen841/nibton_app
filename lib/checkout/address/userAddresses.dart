import 'package:flutter/material.dart';
import 'package:nibton_app/cart/componnent/constant.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/editAddress/editAddress.dart';

// ignore: use_key_in_widget_constructors
class UserAddress extends StatefulWidget {
  @override
  _UserAddressState createState() => _UserAddressState();
}

class _UserAddressState extends State<UserAddress> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
              primary: false,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => addressCard(),
              separatorBuilder: (context, index) => spaceH(10),
              itemCount: 10),
          spaceH(15),
          placeOrderButton(
              context: context, title: "PROCEED TO PAY", press: () {})
        ],
      ),
    );
  }

  addressCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: HexColor("#E7EAF0"),
                offset: const Offset(0, 3),
                spreadRadius: 3,
                blurRadius: 3)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Home",
                style: headingStyle.copyWith(
                    color: HexColor("#4CB8BA"),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Radio(
                  activeColor: HexColor("#4CB8BA"),
                  value: "",
                  groupValue: "",
                  onChanged: (value) {})
            ],
          ),
          Text(
            "ASHRAf ALMASHHARI",
            style: headingStyle.copyWith(
                color: HexColor("#515C6F"),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Saudi Arabia",
            style: headingStyle.copyWith(
                color: HexColor("#515C6F").withOpacity(0.5),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Riyadh",
                style: headingStyle.copyWith(
                    color: HexColor("#4CB8BA"),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditAddressScreen()));
                    },
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            HexColor("#FF9000"),
                            HexColor("#FFBE03")
                          ]),
                          boxShadow: [
                            BoxShadow(
                                color: HexColor("#B5994565").withOpacity(0.2),
                                offset: const Offset(0, 3),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("EDIT",
                            style: headingStyle.copyWith(
                              color: HexColor("#272727"),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                  spaceW(10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          color: HexColor("#2D2D2D"),
                          boxShadow: [
                            BoxShadow(
                                color: HexColor("#B5994565").withOpacity(0.1),
                                offset: const Offset(0, 3),
                                spreadRadius: 3,
                                blurRadius: 3)
                          ],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text("DELETE",
                            style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
