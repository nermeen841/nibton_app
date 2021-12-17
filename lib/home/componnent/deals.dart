import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class HomeDeals extends StatefulWidget {
  @override
  _HomeDealsState createState() => _HomeDealsState();
}

class _HomeDealsState extends State<HomeDeals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 250,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          primary: true,
          shrinkWrap: true,
          itemBuilder: (context, index) => DealsCard(),
          separatorBuilder: (context, index) => spaceW(10),
          itemCount: 10),
    );
  }
}

// ignore: use_key_in_widget_constructors
class DealsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 160,
            child: Stack(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    child: Image.asset(
                      "assests/images/Image 33.png",
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        "Kitchen Sets",
                        maxLines: 2,
                        style: headingStyle.copyWith(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: HexColor("#E5EFEF"),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  // padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [HexColor("#FF9000"), HexColor("#FFBE03")]),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "07",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Center(
                        child: Text(
                          "DAYS",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                spaceW(15),
                Container(
                  width: 70,
                  height: 70,
                  // padding: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [HexColor("#FF9000"), HexColor("#FFBE03")]),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "23",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Center(
                        child: Text(
                          "HOURS",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                spaceW(15),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [HexColor("#FF9000"), HexColor("#FFBE03")]),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "35",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Center(
                        child: Text(
                          "MINS",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                spaceW(15),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [HexColor("#FF9000"), HexColor("#FFBE03")]),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "10",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Center(
                        child: Text(
                          "SECS",
                          style: headingStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
