import 'package:flutter/material.dart';
import 'package:nibton_app/components/constants.dart';

// ignore: use_key_in_widget_constructors
class Sldershow extends StatefulWidget {
  @override
  _SldershowState createState() => _SldershowState();
}

class _SldershowState extends State<Sldershow> {
  List<String> images = [
    "assests/images/Image 37.png",
    "assests/images/Image 37.png",
    "assests/images/Image 37.png",
  ];
  late PageController pageController;

  bool isTapped = true;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        color: Colors.white,
        child: PageView.builder(
            itemCount: images.length,
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  images[index],
                  fit: BoxFit.contain,
                ),
              );
            }),
      ),
      spaceH(15),
      Center(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children:
            List.generate(images.length, (index) => buildDot(index: index)),
      ))
    ]);
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 3,
      width: currentIndex == index ? 30 : 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: currentIndex == index
              ? HexColor("#40A2A6")
              : HexColor("#D5D5D5")),
      child: InkWell(
          onTap: () {
            pageController.animateToPage(index,
                duration: const Duration(microseconds: 500),
                curve: Curves.fastOutSlowIn);
          },
          child: Center(
            child: Text("", style: headingStyle),
          )),
    );
  }
}
