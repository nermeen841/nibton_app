import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nibton_app/Authnitication/componnent/signIn_form.dart';
import 'package:nibton_app/Authnitication/componnent/signup.dart';
import 'package:nibton_app/components/constants.dart';
import 'package:nibton_app/components/customBottomnav.dart';

class AuthniticationBody extends StatefulWidget {
  const AuthniticationBody({Key? key}) : super(key: key);

  @override
  _AuthniticationBodyState createState() => _AuthniticationBodyState();
}

class _AuthniticationBodyState extends State<AuthniticationBody> {
  late PageController pageController;
  List<String> contText = [
    "SIGN IN",
    "SIGN UP",
  ];

  bool isTapped = true;
  int currentIndex = 0;
  List<Widget> screens = [const SignInForm(), const SignupForm()];
  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: true,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: SvgPicture.asset("assests/images/logo.svg")),
            spaceH(40),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: List.generate(
                        contText.length, (index) => buildDot(index: index)),
                  )),
                  const Divider(),
                  SizedBox(
                    height: 300,
                    child: PageView.builder(
                        itemCount: contText.length,
                        controller: pageController,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return screens[index];
                        }),
                  ),
                ],
              ),
            ),
            spaceH(20),
            Center(
              child: Text(
                "Don't have an account ? Swipe right to ",
                style: headingStyle.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            spaceH(10),
            Center(
              child: Text(
                "Create a New Account",
                style: headingStyle.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            spaceH(20),
            const Divider(
              color: Colors.white,
            ),
            spaceH(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "English ( us )",
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomBottomNav()));
                  },
                  child: Text(
                    "Skip",
                    style: headingStyle.copyWith(
                        color: HexColor("#C1E9F7"),
                        fontWeight: FontWeight.w400,
                        fontSize: 19),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "عربي",
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 40,
      width: currentIndex == index ? 100 : 100,
      decoration: BoxDecoration(
          color: currentIndex == index ? HexColor("#4CB8BA") : Colors.white),
      child: InkWell(
          onTap: () {
            pageController.animateToPage(index,
                duration: const Duration(microseconds: 500),
                curve: Curves.fastOutSlowIn);
          },
          child: Center(
            child: Text(
              contText[index],
              style: headingStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: (currentIndex == index) ? Colors.white : Colors.black),
            ),
          )),
    );
  }
}
