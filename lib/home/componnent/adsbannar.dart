import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AdsBannar extends StatefulWidget {
  @override
  _AdsBannarState createState() => _AdsBannarState();
}

class _AdsBannarState extends State<AdsBannar> {
  List<String> images = [
    "assests/images/Ad.png",
    "assests/images/background.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Image.asset(
                    images[itemIndex],
                    fit: BoxFit.contain,
                  ),
          options: CarouselOptions(
            height: 170,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
