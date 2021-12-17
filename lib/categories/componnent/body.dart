import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class CategoryBody extends StatefulWidget {
  @override
  _CategoryBodyState createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Center(
          child: SearchButton(),
        ),
        spaceH(40),
        catItem(title: "T-Shirt", press: () {}),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        catItem(title: "Shirts", press: () {}),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        catItem(title: "Pants & Jeans", press: () {}),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        catItem(title: "Material", press: () {}),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        catItem(title: "Brands", press: () {}),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
      ],
    );
  }

  catItem({required String title, required VoidCallback press}) {
    return InkWell(
      onTap: press,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(
              title,
              style: headingStyle.copyWith(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor("#2D2D2D")),
            child: Center(
              child: Icon(
                Icons.keyboard_arrow_right,
                size: 20,
                color: HexColor("#FFBE03"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SearchButton() => Container(
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
      );
}
