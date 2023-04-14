// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:flutter_svg/flutter_svg.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/components/custom_suffix_icon.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/components/default_button.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/components/form_error.dart';
// import 'package:kedai_nusantara/components/no_account_text.dart';
// import 'package:kedai_nusantara/components/social_card.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/constants.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/screens/forgot_password/forgot_password_screen.dart';
// import 'package:kedai_nusantara/screens/sign_in/components/sign_form.dart';
// import 'package:kedai_nusantara/size_config.dart';

// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: SizeConfig.screenHeight * 0.04),
//                 Text(
//                   "Login Akun",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: getProportionateScreenWidth(28),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const Text(
//                   "Masuk dengan email dan kata sandi Anda \natau lanjutkan dengan media sosial",
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight * 0.08),
//                 const SignForm(),
//                 SizedBox(height: SizeConfig.screenHeight * 0.08),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SocialCard(
//                       icon: "assets/icons/google-icon.svg",
//                       press: () {},
//                     ),
//                     SocialCard(
//                       icon: "assets/icons/facebook-2.svg",
//                       press: () {},
//                     ),
//                     SocialCard(
//                       icon: "assets/icons/twitter.svg",
//                       press: () {},
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: getProportionateScreenHeight(20),
//                 ),
//                 const NoAccountText(),
//                 SizedBox(
//                   height: getProportionateScreenHeight(30),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
