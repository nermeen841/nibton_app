import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/aboutUs/aboutUs.dart';
import 'package:nibton_app/changeLanguage/changeLanguage.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/contactUs/contactUs.dart';
import 'package:nibton_app/deals/deals.dart';
import 'package:nibton_app/offers/offers.dart';
import 'package:nibton_app/profile/profile.dart';
import 'package:nibton_app/wishlist/wishlist.dart';

// ignore: use_key_in_widget_constructors
class MoreBody extends StatefulWidget {
  @override
  _MoreBodyState createState() => _MoreBodyState();
}

class _MoreBodyState extends State<MoreBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      children: [
        moreItem(
            press: () {}, title: "Brands", image: "assests/images/brand.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OffersScreen()));
            },
            title: "Offers",
            image: "assests/images/offers (1).svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DealsScreen()));
            },
            title: "Deals",
            image: "assests/images/Deal.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WishlistScreen()));
            },
            title: "Wish List",
            image: "assests/images/wishlist.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUsScreen()));
            },
            title: "Contact us",
            image: "assests/images/Contact.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutUsScreen()));
            },
            title: "About us",
            image: "assests/images/about.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {}, title: "Share", image: "assests/images/share.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            title: "Profile",
            image: "assests/images/user.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangeLanguageScreen()));
            },
            title: "Language",
            image: "assests/images/language.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {},
            title: "Notification",
            image: "assests/images/notification.svg"),
        spaceH(10),
        Divider(
          thickness: 1,
          color: HexColor("#E1E1E1"),
        ),
        spaceH(10),
        moreItem(
            press: () {}, title: "Log out", image: "assests/images/logout.svg"),
      ],
    );
  }

  moreItem(
      {required String title,
      required VoidCallback press,
      required String image}) {
    return InkWell(
      onTap: press,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(image),
              spaceW(10),
              Center(
                child: Text(
                  title,
                  style: headingStyle.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
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
}
