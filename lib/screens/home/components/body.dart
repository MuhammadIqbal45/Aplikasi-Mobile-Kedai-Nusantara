import 'package:flutter/material.dart';
import 'package:kedai_nusantara/screens/home/components/categories.dart';
import 'package:kedai_nusantara/screens/home/components/discound_banner.dart';
import 'package:kedai_nusantara/screens/home/components/food.dart';
import 'package:kedai_nusantara/screens/home/components/header_with_search_box.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';
import 'package:kedai_nusantara/screens/home/components/section_title.dart';
import 'package:kedai_nusantara/screens/home/components/special_offers.dart';
import 'package:kedai_nusantara/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(size: size),
            const DiscountBanner(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(title: "Berdasarkan Kota", press: () {}),
            ),
            const Categories(),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(title: "Rekomendasi", press: () {}),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            const Food()
          ],
        ),
      ),
    );
  }
}
