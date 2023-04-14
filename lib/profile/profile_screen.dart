import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/components/custom_bottom_navbar.dart';
// ignore: unused_import
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/enums.dart';
import 'package:kedai_nusantara/profile/components/body.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/home/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedMenu: MenuState.profile,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: const [
          // SizedBox(width: getProportionateScreenWidth(240)),
          Text(
            "Profil Saya",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      backgroundColor: Palette.bg1,
      iconTheme: const IconThemeData(color: Colors.white),
      leading: const SizedBox(),
      leadingWidth: 20,
      elevation: 0,
      // IconButton(
      //   icon: const Icon(Icons.book),
      //   color: Colors.white,
      //   onPressed: () {},
      // ),
    );
  }
}
