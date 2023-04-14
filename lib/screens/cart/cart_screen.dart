import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/cart/components/body.dart';
import 'package:kedai_nusantara/screens/cart/models/cart.dart';
import 'package:kedai_nusantara/screens/chat/chat_screen.dart';
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';
import 'package:kedai_nusantara/size_config.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = "/keranjang";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          SizedBox(width: getProportionateScreenWidth(250)),
          const Text(
            "Keranjang",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "${demoCarts.length} item",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      backgroundColor: Palette.bg1,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        IconBtnWithCounter(
          svgSrc: "assets/icons/chathome.svg",
          numOfitem: 3,
          press: () {
            Navigator.pushNamed(context, ChatScreen.routeName);
          },
        ),
        const SizedBox(width: kDefaultPaddin / 2),
        // IconButton(
        //   icon: const Icon(Icons.book),
        //   color: Colors.white,
        //   onPressed: () {},
        // ),
      ],
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 124,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 15,
            color: Colors.black,
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row(
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.all(10),
            //       height: getProportionateScreenWidth(40),
            //       width: getProportionateScreenWidth(40),
            //       decoration: BoxDecoration(
            //         color: const Color(0xFFF5F6F9),
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       child: SvgPicture.asset("assets/icons/receipt.svg"),
            //     ),
            //     // const SizedBox(width: 10),
            //     const Spacer(),
            //     Text(
            //       "Tambahkan Voucher",
            //       style: TextStyle(color: Palette.bg1),
            //     ),
            //     const SizedBox(width: 10),
            //     Icon(
            //       Icons.arrow_forward_ios,
            //       size: 12,
            //       color: Palette.bg1,
            //     ),
            //   ],
            // ),
            SizedBox(height: getProportionateScreenHeight(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total : ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: "Rp 337.15 \n",
                        style: TextStyle(fontSize: 16, color: Palette.bg1),
                      ),
                      const TextSpan(
                        text: "Diskon : 0",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenHeight(40),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(140),
                  child: DefaultButton(
                    text: "Check Out",
                    press: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
