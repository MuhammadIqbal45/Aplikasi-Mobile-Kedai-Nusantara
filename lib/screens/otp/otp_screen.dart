import 'package:flutter/material.dart';
import 'package:kedai_nusantara/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("OTP Verification"),
      // ),
      body: Body(),
    );
  }
}
