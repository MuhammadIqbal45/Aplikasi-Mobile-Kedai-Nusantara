import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/cart/cart_screen.dart';
import 'package:kedai_nusantara/screens/chat/chat_screen.dart';
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Palette.bg1,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/Back ICon.svg",
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconBtnWithCounter(
        svgSrc: "assets/icons/cart.svg",
        numOfitem: 3,
        press: () => Navigator.pushNamed(context, CartScreen.routeName),
      ),
      IconBtnWithCounter(
        svgSrc: "assets/icons/chatfix.svg",
        numOfitem: 3,
        press: () => Navigator.pushNamed(context, ChatScreen.routeName),
      ),
      const SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
