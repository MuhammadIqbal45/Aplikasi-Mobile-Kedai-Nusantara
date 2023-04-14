import 'package:flutter/material.dart';
import 'package:kedai_nusantara/screens/branding/components/branding_card_2.dart';
import 'package:kedai_nusantara/screens/branding/components/branding_card_3.dart';
import 'package:kedai_nusantara/screens/branding/components/discound_banner.dart';
import 'package:kedai_nusantara/screens/branding/components/branding_card.dart';
import 'package:kedai_nusantara/screens/branding/components/header_with_search_box.dart';
import 'package:kedai_nusantara/screens/branding/components/section_title.dart';
import 'package:kedai_nusantara/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  get ingredient => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox(size: size),
            const DiscountBanner(),
            // const SpecialOffers(),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child:
                  SectionTitle(title: "Pilihan Paket Branding", press: () {}),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            const BrandingCard(),
            // SizedBox(height: getProportionateScreenWidth(0)),
            const BrandingCard2(),
            // SizedBox(height: getProportionateScreenWidth(0)),
            const BrandingCard3(),
            // SizedBox(height: getProportionateScreenWidth(0)),
          ],
        ),
      ),
    );
  }
}
