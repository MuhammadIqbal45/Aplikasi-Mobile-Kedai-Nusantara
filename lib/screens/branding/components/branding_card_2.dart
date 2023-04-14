import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';

class BrandingCard2 extends StatelessWidget {
  const BrandingCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 430,
        width: 270,
        child: Stack(
          children: <Widget>[
            // Big light background
            Positioned(
              right: 0,
              bottom: 68,
              child: Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Colors.grey.shade200,
                ),
              ),
            ),
            // Rounded background
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Palette.bg1,
                ),
              ),
            ),
            // Food Image
            Positioned(
              top: 6,
              left: -55,
              child: Container(
                height: 100,
                width: 226,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/kedai.png"),
                  ),
                ),
              ),
            ),
            // Price
            // const Positioned(
            //   right: 20,
            //   top: 80,
            //   child: Text(
            //     "20 ribu",
            //     // style: Theme.of(context)
            //     //     .textTheme
            //     //     .headline
            //     //     .copyWith(color: kPrimaryColor),
            //   ),
            // ),
            Positioned(
              top: 120,
              left: 40,
              // ignore: sized_box_for_whitespace
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Paket Branding 2",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      // style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      "1.5 Juta",
                      style: TextStyle(
                        fontSize: 18,
                        color: kTextColor.withOpacity(.4),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "10x Revisi",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    Text(
                      "Pengerjaan 10-14 Hari",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    Text(
                      "Branding Logo (3 Varian)",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    Text(
                      "Branding Kemasan",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    Text(
                      "Branding Spanduk",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    Text(
                      "Poster Promosi",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    Text(
                      "File Master Design",
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    // const SizedBox(height: 16),
                    // const Text(
                    //   "calories",
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
