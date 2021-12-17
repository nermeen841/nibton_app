import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/categories/categories.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/home/home.dart';
import 'package:nibton_app/more/more.dart';
import 'package:nibton_app/offers/offers.dart';
import 'package:nibton_app/orders/orders.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  List<Widget> screens = [
    CategoriesScreen(),
    OffersScreen(),
    const HomeScreen(),
    OrdersScreen(),
    MoreScreen()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          elevation: 0.0,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: HexColor("#FFBE03"),
          unselectedLabelStyle: headingStyle.copyWith(
              color: HexColor("#FFBE03"),
              fontSize: 12,
              fontWeight: FontWeight.w700),
          selectedLabelStyle: headingStyle.copyWith(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assests/images/categories.svg",
                  color:
                      (selectedIndex == 0) ? Colors.white : HexColor("#FFBE03"),
                ),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assests/images/offers.svg",
                  color:
                      (selectedIndex == 1) ? Colors.white : HexColor("#FFBE03"),
                ),
                label: "Offers"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assests/images/home.svg",
                  color:
                      (selectedIndex == 2) ? Colors.white : HexColor("#FFBE03"),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assests/images/my-orders.svg",
                  color:
                      (selectedIndex == 3) ? Colors.white : HexColor("#FFBE03"),
                ),
                label: "My orders"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.menu), label: "More"),
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}
