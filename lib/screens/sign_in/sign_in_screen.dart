import 'package:flutter/material.dart';
import 'package:kedai_nusantara/screens/sign_in/components/sign_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Sign In",
      //     textAlign: TextAlign.center,
      //   ),
      // ),
      body: SignForm(),
    );
  }
}
