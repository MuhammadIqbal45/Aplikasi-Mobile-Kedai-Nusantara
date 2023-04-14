// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/components/custom_suffix_icon.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/components/default_button.dart';
// // ignore: unused_import
// import 'package:kedai_nusantara/components/form_error.dart';
// import 'package:kedai_nusantara/components/social_card.dart';
// import 'package:kedai_nusantara/constants.dart';
// import 'package:kedai_nusantara/screens/sign_up/components/sign_up_form.dart';
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
//                   "Daftar Akun",
//                   style: headingStyle,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight * 0.02),
//                 const Text(
//                   "Lengkapi detail Anda atau lewati \ndengan media sosial",
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight * 0.07),
//                 const SignUpForm(),
//                 SizedBox(height: SizeConfig.screenHeight * 0.07),
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
//                 SizedBox(height: getProportionateScreenHeight(20)),
//                 const Text(
//                   "Dengan melanjutkan konfirmasi bahwa Anda setuju dengan syarat dan Ketentuan kami",
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: getProportionateScreenHeight(30)),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
