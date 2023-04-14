import 'package:flutter/material.dart';
import 'package:kedai_nusantara/size_config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/bali.png", "text": ""},

      // {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      // {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      // {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      // {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      // {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(
              image: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.image, required this.text, required this.press})
      : super(key: key);

  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(120),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(100)),
              height: getProportionateScreenWidth(200),
              width: getProportionateScreenWidth(200),
              decoration: BoxDecoration(
                color: const Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
                width: 2000,
                height: 2000,
              ),
            ),
            const SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
