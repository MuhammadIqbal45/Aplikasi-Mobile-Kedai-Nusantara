import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/screens/sign_in/sign_in_screen.dart';
import 'package:kedai_nusantara/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.12),
          Image.asset(
            "assets/images/halo.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Daftar Berhasil",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            // width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Kembali",
              press: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
