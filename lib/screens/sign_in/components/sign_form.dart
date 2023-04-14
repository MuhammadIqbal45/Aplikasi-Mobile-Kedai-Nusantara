import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/custom_suffix_icon.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/components/form_error.dart';
import 'package:kedai_nusantara/components/no_account_text.dart';
import 'package:kedai_nusantara/components/social_card.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/forgot_password/forgot_password_screen.dart';
import 'package:kedai_nusantara/screens/home/home_screen.dart';
import 'package:kedai_nusantara/size_config.dart';
import 'package:http/http.dart' as http;

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

enum statusLogin { notSignIn, signIn }

class _SignFormState extends State<SignForm> {
  // ignore: unused_field
  late statusLogin _statusLogin = statusLogin.notSignIn;
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  void addError({required String error}) {
    if (!errors.contains(error))
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        errors.remove(error);
      });
  }

  // ignore: non_constant_identifier_names
  Check() {
    // ignore: unused_local_variable
    final form = _formKey.currentState;
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      login();
    }
  }

  login() async {
    final response = await http.post(
      Uri.parse("http://192.168.162.38/Kedai%20Nusantara/api/login.php"),
      body: {
        "username": email,
        "password": password,
      },
    );

    final data = jsonDecode(response.body);
    int value = data['value'];
    String pesan = data['message'];
    if (value == 1) {
      setState(() {
        _statusLogin = statusLogin.signIn;
      });
      // ignore: avoid_print
      print(pesan);
    } else {
      // ignore: avoid_print
      print(pesan);
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (_statusLogin) {
      case statusLogin.notSignIn:
        return SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: SizeConfig.screenHeight * 0.04),
                      Text(
                        "Login Akun",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(28),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.02),
                      const Text(
                        "Masuk dengan email dan kata sandi Anda \natau lanjutkan dengan media sosial",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.08),

                      // const SignForm(),

                      buildEmailFormField(),
                      SizedBox(height: getProportionateScreenHeight(30)),
                      buildPasswordFormField(),
                      SizedBox(height: getProportionateScreenHeight(30)),
                      Row(
                        children: [
                          Checkbox(
                            value: remember,
                            activeColor: Palette.bg1,
                            onChanged: (value) {
                              setState(() {
                                remember = value!;
                              });
                            },
                          ),
                          const Text("Ingat Saya"),
                          const Spacer(),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, ForgotPasswordScreen.routeName),
                            child: const Text(
                              "Lupa Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      FormError(errors: errors),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      DefaultButton(
                        text: "Login",
                        press: () {
                          // if (_formKey.currentState!.validate()) {
                          //   _formKey.currentState!.save();
                          Check();
                          // Navigator.pushNamed(context, HomeScreen.routeName);
                          // Check();
                          // }
                        },
                      ),
                      SizedBox(height: SizeConfig.screenHeight * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialCard(
                            icon: "assets/icons/google-icon.svg",
                            press: () {},
                          ),
                          SocialCard(
                            icon: "assets/icons/facebook-2.svg",
                            press: () {},
                          ),
                          SocialCard(
                            icon: "assets/icons/twitter.svg",
                            press: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      const NoAccountText(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
        // ignore: dead_code
        break;
      case statusLogin.signIn:
        return const HomeScreen();
        // ignore: dead_code
        break;
    }
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: _secureText,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        // ignore: avoid_returning_null_for_void
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukkan Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          onPressed: showHide,
          icon: Icon(_secureText ? Icons.visibility : Icons.visibility_off),
          // icon: SvgPicture.asset("assets/icons/Lock.svg"),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        // ignore: avoid_returning_null_for_void
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Masukkan Email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
