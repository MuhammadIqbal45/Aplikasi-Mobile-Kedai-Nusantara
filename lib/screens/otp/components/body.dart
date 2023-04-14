import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/otp/components/otp_form.dart';
import 'package:kedai_nusantara/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.122),
              Text(
                "Verifikasi OTP",
                style: headingStyle,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              const Text("Kami mengirim kode pada +1 898 860 ***"),
              buildTimer(),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: const Text(
                  "kirim ulang kode OTP",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Kode berakhir pada "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, value, child) => Text(
            // ignore: unnecessary_string_interpolations
            "${value.toString()}",
            style: TextStyle(color: Palette.bg1),
          ),
        ),
      ],
    );
  }
}
