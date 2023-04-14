import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/constants.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';
// ignore: unused_import
import 'package:kedai_nusantara/size_config.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPaddin),
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPaddin,
              right: kDefaultPaddin,
              bottom: 2 + kDefaultPaddin,
            ),
            height: size.height * 0.4 - 2,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 500, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(65),
                bottomRight: Radius.circular(65),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: 295,
          //     // right: 100,
          //     // bottom: 100,
          //     top: 15,
          //   ),
          //   child: IconBtnWithCounter(
          //     svgSrc: "assets/icons/cart.svg",
          //     press: () {},
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     left: 330,
          //     // right: 100,
          //     // bottom: 100,
          //     top: 15,
          //   ),
          //   child: IconBtnWithCounter(
          //     svgSrc: "assets/icons/chatfix.svg",
          //     numOfitem: 3,
          //     press: () {},
          //   ),
          // ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: Palette.bg1.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/Search Icon.svg",
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffixIcon:
                          //     SvgPicture.asset("assets/icons/search.svg"),
                        ),
                        textAlign: TextAlign.left),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
