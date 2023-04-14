import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';

class TitlePrice extends StatelessWidget {
  const TitlePrice({
    Key? key,
    required this.price,
    required this.name,
    required this.numOfReviews,
  }) : super(key: key);

  final int price, numOfReviews;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                  children: <Widget>[
                    // SmoothStarRating(
                    //   borderColor: Palette.bg1,
                    // ),
                    const SizedBox(width: 15),
                    Text("$numOfReviews Reviews"),
                  ],
                ),
              ],
            ),
          ),
          pricetag(context, price: price),
        ],
      ),
    );
  }

  ClipPath pricetag(BuildContext context, {required int price}) {
    return ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 6),
        height: 56,
        width: 55,
        color: Palette.bg1,
        child: Text(
          "\$$price",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreheight = 20;
    path.lineTo(0, size.height - ignoreheight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreheight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
