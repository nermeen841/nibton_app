import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibton_app/components/constants.dart';
import 'componnent/body.dart';
import 'componnent/menue.dart';

// ignore: use_key_in_widget_constructors
class AllProducts extends StatelessWidget {
  static final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: AllProducts.scaffoldKey,
      endDrawer: MenueFilter(),
      backgroundColor: HexColor("#F5F6F8"),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: Container(
          color: HexColor("#F5F6F8"),
          // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Row(
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: HexColor("#B59945"),
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: HexColor("#727C8E").withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 20,
                          height: 20,
                          child: SvgPicture.asset(
                            "assests/images/Search.svg",
                            fit: BoxFit.cover,
                          )),
                      spaceW(10),
                      Text(
                        "Search Something",
                        style: headingStyle.copyWith(
                            color: HexColor("#515C6F"),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: AllproductBody(),
    );
  }
}
