import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/sign_in/sign_in_screen.dart';
import 'package:kedai_nusantara/screens/splash/components/splash_content.dart';
// ignore: unused_import
import 'package:kedai_nusantara/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Selamat Datang di Kedai Nusantara \nMari Berbelanja!",
      "image": "assets/images/splash3.png"
    },
    {
      "text":
          "Kami membantu Anda menemukan \nmakanan/minuman Tradisional di Indonesia",
      "image": "assets/images/splash1.png"
    },
    {
      "text":
          "Kami menunjukkan cara mudah untuk berbelanja. \nCukup di rumah saja bersama kami",
      "image": "assets/images/splash2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 2),
                    DefaultButton(
                      text: "Lewati",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Palette.bg1 : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
