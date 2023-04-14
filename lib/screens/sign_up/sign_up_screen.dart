import 'package:flutter/material.dart';
import 'package:kedai_nusantara/screens/sign_up/components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("Sign Up"),
      // ),
      body: SignUpForm(),
    );
  }
}
