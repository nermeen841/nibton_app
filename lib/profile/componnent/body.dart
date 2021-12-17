import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/default_button.dart';

// ignore: use_key_in_widget_constructors
class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: HexColor("#515C6F").withOpacity(0.2),
                    shape: BoxShape.circle),
                child: Center(
                  child: SvgPicture.asset(
                    "assests/images/Profile.svg",
                    color: Colors.white,
                    width: 60,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              spaceH(15),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Update profile picture",
                    style: headingStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: HexColor("#333333")),
                  ),
                ),
              ),
            ],
          ),
        ),
        spaceH(15),
        Divider(
          color: HexColor("#333333").withOpacity(0.3),
          thickness: 1,
        ),
        spaceH(15),
        profileItem(
            title: "ASHRAf ALMASHHARI", image: "assests/images/user.svg"),
        spaceH(15),
        Divider(
          color: HexColor("#333333").withOpacity(0.3),
          thickness: 1,
        ),
        spaceH(15),
        profileItem(
            title: "ASHRAf ALMASHHARI@domain.com",
            image: "assests/images/email.svg"),
        spaceH(15),
        Divider(
          color: HexColor("#333333").withOpacity(0.3),
          thickness: 1,
        ),
        spaceH(15),
        profileItem(
            title: "+91 98765 43210", image: "assests/images/mobile.svg"),
        spaceH(15),
        Divider(
          color: HexColor("#333333").withOpacity(0.3),
          thickness: 1,
        ),
        spaceH(15),
        profileItem(title: "Gender - Male", image: "assests/images/user.svg"),
        spaceH(15),
        Divider(
          color: HexColor("#333333").withOpacity(0.3),
          thickness: 1,
        ),
        spaceH(15),
        profileItem(
            title: "Birth - Jan 01, 1960",
            image: "assests/images/calendar.svg"),
        spaceH(15),
        Divider(
          color: HexColor("#333333").withOpacity(0.3),
          thickness: 1,
        ),
        spaceH(15),
        SizedBox(
          height: 40,
          width: 300,
          child: Center(
            child: DefaultButton(
              press: () {},
              text: "UPDATE YOUR DATA",
            ),
          ),
        ),
        spaceH(15),
      ],
    );
  }

  profileItem({required String title, required String image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(image),
          spaceW(15),
          Text(
            title,
            style: headingStyle.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: HexColor("#333333"),
            ),
          )
        ],
      ),
    );
  }
}
