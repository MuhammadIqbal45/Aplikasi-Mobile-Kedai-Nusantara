import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/custom_suffix_icon.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/components/form_error.dart';
import 'package:kedai_nusantara/components/social_card.dart';
import 'package:kedai_nusantara/constants.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/complete_profile/complete_profile_screen.dart';
import 'package:kedai_nusantara/screens/otp/otp_screen.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/sign_up/components/body.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/sign_up_success/sign_up_success.dart';
import 'package:kedai_nusantara/size_config.dart';
import 'package:http/http.dart' as http;

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // ignore: unused_field, non_constant_identifier_names
  final _Key = GlobalKey<FormState>();
  late String email;
  late String firstName;
  // late String lastName;
  late String phoneNumber;
  // late String address;
  late String password;
  // ignore: non_constant_identifier_names
  // late String confirm_password;
  bool remember = false;
  final List<String> errors = [];
  bool _secureText = true;
  bool _secureText2 = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  showHide2() {
    setState(() {
      _secureText2 = !_secureText2;
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
    final form = _Key.currentState;
    if (form!.validate()) {
      form.save();
      save();
    }
  }

  save() async {
    final response = await http.post(
      Uri.parse("http://192.168.162.38/Kedai%20Nusantara/api/register.php"),
      body: {
        "username": email,
        "nama_depan": firstName,
        // "nama_belakang": lastName,
        // "alamat": address,
        "no_hp": phoneNumber,
        "password": password,
        // "confirm_password": confirm_password,
      },
    );

    final data = jsonDecode(response.body);
    int value = data['value'];
    String pesan = data['message'];
    if (value == 1) {
      setState(() {
        // ignore: avoid_print
        print(pesan);
        Navigator.pop(context);
        Navigator.pushNamed(context, OtpScreen.routeName);
      });
    } else {
      // ignore: avoid_print
      print(pesan);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Form(
              key: _Key,
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    "Daftar Akun",
                    style: headingStyle,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.02),
                  const Text(
                    "Lengkapi detail Anda atau lewati \ndengan media sosial",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  buildEmailFormField(),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  buildFirstNameFormField(),
                  // SizedBox(height: getProportionateScreenHeight(30)),
                  // buildLastNameFormField(),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  buildPhoneNumberFormField(),
                  // SizedBox(height: getProportionateScreenHeight(30)),
                  // buildAddressFormField(),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  buildPasswordFormField(),
                  // SizedBox(height: getProportionateScreenHeight(30)),
                  // buildConfirmPassFormField(),
                  FormError(errors: errors),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  DefaultButton(
                    text: "Daftar",
                    press: () {
                      Check();
                    },
                    // press: () {
                    //   if (_formKey.currentState!.validate()) {
                    //     Navigator.pushNamed(
                    //         context, CompleteProfileScreen.routeName);
                    //   }
                    // },
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
                  const Text(
                    "Dengan melanjutkan konfirmasi bahwa Anda setuju dengan syarat dan Ketentuan kami",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // TextFormField buildAddressFormField() {
  //   return TextFormField(
  //     keyboardType: TextInputType.emailAddress,
  //     onSaved: (newValue) => address = newValue!,
  //     onChanged: (value) {
  //       if (value.isNotEmpty && errors.contains(kAddressNullError)) {
  //         setState(() {
  //           errors.remove(kAddressNullError);
  //         });
  //       }
  //       // ignore: avoid_returning_null_for_void
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty && !errors.contains(kAddressNullError)) {
  //         setState(() {
  //           errors.add(kAddressNullError);
  //         });
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: const InputDecoration(
  //       labelText: "Alamat",
  //       hintText: "Masukkan Alamat",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSuffixIcon(
  //         svgIcon: "assets/icons/Location point.svg",
  //       ),
  //     ),
  //   );
  // }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
        // ignore: avoid_returning_null_for_void
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Nomor Hp",
        hintText: "Masukkan Nomor Hp",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  // TextFormField buildLastNameFormField() {
  //   return TextFormField(
  //     onSaved: (newValue) => lastName = newValue!,
  //     decoration: const InputDecoration(
  //       labelText: "Nama Belakang",
  //       hintText: "Masukkan Nama Belakang",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSuffixIcon(
  //         svgIcon: "assets/icons/User.svg",
  //       ),
  //     ),
  //   );
  // }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
        // ignore: avoid_returning_null_for_void
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Nama",
        hintText: "Masukkan Nama",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  // TextFormField buildConfirmPassFormField() {
  //   return TextFormField(
  //     obscureText: _secureText2,
  //     onSaved: (newValue) => confirm_password = newValue!,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kPassNullError);
  //       } else if (value.isNotEmpty && password == confirm_password) {
  //         removeError(error: kMatchPassError);
  //       }
  //       confirm_password = value;
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         addError(error: kPassNullError);
  //         return "";
  //       } else if ((password != value)) {
  //         addError(error: kMatchPassError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Konfirmasi Password",
  //       hintText: "Masukkan Ulang Password",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: IconButton(
  //         onPressed: showHide2,
  //         icon: Icon(_secureText2 ? Icons.visibility : Icons.visibility_off),
  //         // icon: SvgPicture.asset("assets/icons/Lock.svg"),
  //       ),
  //     ),
  //   );
  // }

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
        password = value;
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
        hintText: "Masukkan email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
