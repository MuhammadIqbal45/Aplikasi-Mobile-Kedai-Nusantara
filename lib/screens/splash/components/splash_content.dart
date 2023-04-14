import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          "Kedai Nusantara",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            color: Palette.bg1,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Text(
          text!,
          textAlign: TextAlign.center,
          // style: TextStyle(color: Palette.bg2),
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(263),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
