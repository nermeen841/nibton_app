import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nibton_app/cart/cart.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/home/componnent/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 100),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [HexColor("#4CB8BA"), HexColor("#40A2A6")])),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: SvgPicture.asset("assests/images/Menu.svg")),
                    spaceW(10),
                    Text(
                      "ALHAZAZ",
                      style: headingStyle.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: SvgPicture.asset("assests/images/screen.svg")),
                    spaceW(10),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen()));
                        },
                        child:
                            SvgPicture.asset("assests/images/cart-home.svg")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
