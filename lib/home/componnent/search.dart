import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      color: HexColor("#EFEFEF"),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 20),
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
    );
  }
}
