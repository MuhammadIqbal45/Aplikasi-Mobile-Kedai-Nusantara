import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/branding/components/section_title.dart';
import 'package:kedai_nusantara/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Pilihan Paket Branding",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              SpecialOfferCard(
                image: "assets/images/gorontalo.png",
                category: "Paket 1",
                cost: "1 Juta",
                press: () {},
              ),
              const SizedBox(height: 20),
              SpecialOfferCard(
                image: "assets/images/minuman.jpg",
                category: "Paket 2",
                cost: "1.5 Juta",
                press: () {},
              ),
              const SizedBox(height: 20),
              SpecialOfferCard(
                image: "assets/images/minuman.jpg",
                category: "Paket 3",
                cost: "2.5 Juta",
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard(
      {Key? key,
      required this.category,
      required this.image,
      required this.press,
      required this.cost})
      : super(key: key);

  final String category, image, cost;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(2)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(320),
          height: getProportionateScreenWidth(150),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    image,
                    // alignment: Alignment.centerLeft,
                    // fit: BoxFit.cover,
                    // width: 3000,
                    // height: 3000,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     Colors.grey.withOpacity(0.2),
                    //     Colors.grey.withOpacity(0.2),
                    //   ],
                    // ),
                    // color: Colors.grey.shade300,
                    color: Palette.bg1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // ignore: unnecessary_string_interpolations
                        TextSpan(
                          // ignore: unnecessary_string_interpolations
                          text: "$cost",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    "assets/images/logo aja.png",
                    // cacheHeight: 1000,
                    // alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
