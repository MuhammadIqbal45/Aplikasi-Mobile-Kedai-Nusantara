import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/profile/components/profile.dart';
import 'package:kedai_nusantara/profile/components/profile_pic.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';
// ignore: unused_import
import 'package:kedai_nusantara/size_config.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPaddin),
      height: size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPaddin,
              right: kDefaultPaddin,
              bottom: 2 + kDefaultPaddin,
            ),
            height: size.height * 0.25 - 2,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 500, 1),
              borderRadius: BorderRadius.only(
                  // bottomLeft: Radius.circular(65),
                  // bottomRight: Radius.circular(65),
                  ),
            ),
          ),
          Positioned(
            bottom: -5,
            left: 0,
            right: 0,
            child: Column(
              children: [
                profile(),
              ],
            ),
          ),
          Positioned(
            bottom: 130,
            left: 140,
            right: 0,
            child: Row(
              children: const [ProfilePic()],
            ),
          ),
        ],
      ),
    );
  }
}
