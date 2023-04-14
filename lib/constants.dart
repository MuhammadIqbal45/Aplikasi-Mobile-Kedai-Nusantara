import 'package:flutter/material.dart';
import 'package:kedai_nusantara/size_config.dart';
// import 'package:shop_app/size_config.dart';

const kPrimaryColorBaru = Color(0xFF03A9F4);
const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kContentColorLightTheme = Color(0xFF1D1D35);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);
const kDefaultPadding = 20.0;
const kAnimationDuration = Duration(milliseconds: 200);

class Palette {
  static Color bg1 = const Color.fromRGBO(0, 0, 500, 1);
  static Color bg2 = const Color.fromRGBO(255, 255, 255, 1);
}

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const kDefaultPaddin = 20.0;
// const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Masukkan Email";
const String kInvalidEmailError = "Masukkan Email Valid";
const String kPassNullError = "Masukkan Password";
const String kShortPassError = "Password Terlalu Pendek";
const String kMatchPassError = "Passwords Tidak Sesuai";
const String kNamelNullError = "Masukkan Nama";
const String kPhoneNumberNullError = "Masukkan Nomor Hp";
const String kAddressNullError = "Masukkan Alamat";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
