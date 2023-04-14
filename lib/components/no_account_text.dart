import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/forgot_password/forgot_password_screen.dart';
import 'package:kedai_nusantara/screens/sign_up/sign_up_screen.dart';
import 'package:kedai_nusantara/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Tidak punya akun?",
          style: TextStyle(fontSize: getProportionateScreenWidth(10)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Daftar",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(10), color: Palette.bg1),
          ),
        ),
      ],
    );
  }
}
