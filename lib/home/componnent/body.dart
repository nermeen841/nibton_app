import 'package:flutter/material.dart';
import 'package:nibton_app/all%20Product/all_products.dart';
import 'package:nibton_app/deals/deals.dart';
import 'package:nibton_app/home/componnent/search.dart';

import 'package:nibton_app/home/componnent/section_title.dart';
import 'package:nibton_app/home/componnent/sections.dart';
import 'package:nibton_app/offers/offers.dart';

import 'adsbannar.dart';
import 'dayProducts.dart';
import 'deals.dart';
import 'mostVisited.dart';
import 'newCollection.dart';
import 'offer_section.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        SearchButton(),
        HomeSections(),
        AdsBannar(),
        SectionTitle(
            title: "Offers",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => OffersScreen()))),
        OffersSection(),
        SectionTitle(title: "Our Collection", press: () {}),
        OurCollection(),
        SectionTitle(
            title: "Deals",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DealsScreen()))),
        HomeDeals(),
        SectionTitle(
            title: "National Day Products",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AllProducts()))),
        NationaldayProducts(),
        AdsBannar(),
        SectionTitle(
            title: "Most Viewed Products",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AllProducts()))),
        MostVisitedProducts()
      ],
    );
  }
}
