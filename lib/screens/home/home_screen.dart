import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/components/custom_bottom_navbar.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/enums.dart';
import 'package:kedai_nusantara/screens/cart/cart_screen.dart';
import 'package:kedai_nusantara/screens/chat/chat_screen.dart';
import 'package:kedai_nusantara/screens/home/components/body.dart';
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        elevation: 0,
        backgroundColor: Palette.bg1,
        actions: <Widget>[
          // IconButton(
          //   icon: SvgPicture.asset("assets/icons/cart.svg"),
          //   onPressed: () {},
          // ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/cart.svg",
            numOfitem: 3,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/chathome.svg",
            numOfitem: 3,
            press: () {
              Navigator.pushNamed(context, ChatScreen.routeName);
            },
          ),
          // IconButton(
          //   icon: SvgPicture.asset(
          //     "assets/icons/chat-svgrepo-com.svg",
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // ),
          const SizedBox(width: kDefaultPaddin / 2),
        ],
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
