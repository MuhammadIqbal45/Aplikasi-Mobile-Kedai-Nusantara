// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/components/filled_outline_button.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/chat/components/chat_card.dart';
import 'package:kedai_nusantara/screens/chat/models/chat.dart';
import 'package:kedai_nusantara/screens/chat_detail/message_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        // HeaderBox(size: size),
        // Container(
        //   alignment: Alignment.center,
        //   margin: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        //   padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        //   // height: 50,
        //   // width: 400,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20),
        //     boxShadow: [
        //       BoxShadow(
        //         offset: const Offset(0, 10),
        //         blurRadius: 50,
        //         color: Palette.bg1.withOpacity(0.23),
        //       ),
        //     ],
        //   ),
        //   child: Row(
        //     children: <Widget>[
        //       SvgPicture.asset(
        //         "assets/icons/Search Icon.svg",
        //         color: Colors.grey,
        //       ),
        //       Expanded(
        //         child: TextField(
        //           textAlign: TextAlign.left,
        //           textAlignVertical: TextAlignVertical.bottom,
        //           onChanged: (value) {},
        //           decoration: InputDecoration(
        //             hintText: "Search",
        //             hintStyle: TextStyle(
        //               color: Colors.grey.withOpacity(0.5),
        //             ),
        //             enabledBorder: InputBorder.none,
        //             focusedBorder: InputBorder.none,
        //             // suffixIcon:
        //             //     SvgPicture.asset("assets/icons/search.svg"),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // Container(
        // padding: const EdgeInsets.fromLTRB(
        //     kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
        // color: Palette.bg1,
        // child: Row(
        //   children: <Widget>[
        //     SvgPicture.asset(
        //       "assets/icons/Search Icon.svg",
        //       color: Colors.white,
        //     ),
        //     Expanded(
        //       child: TextField(
        //           onChanged: (value) {},
        //           decoration: InputDecoration(
        //             hintText: "Search",
        //             hintStyle: TextStyle(
        //               color: Colors.white.withOpacity(0.5),
        //             ),
        //             enabledBorder: InputBorder.none,
        //             focusedBorder: InputBorder.none,
        //             // suffixIcon:
        //             //     SvgPicture.asset("assets/icons/search.svg"),
        //           ),
        //           textAlign: TextAlign.left),
        //     ),
        //   ],
        // ),
        // ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.pushNamed(
                context,
                MessageScreen.routeName,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
