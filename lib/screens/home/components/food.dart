import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/transaksi/details_product.dart';

class Food extends StatelessWidget {
  const Food({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendFood(
            image: "assets/images/wajit.png",
            title: "Wajit Cilin",
            country: "Jawa Barat",
            price: 19000,
            totaltext: "Terjual",
            total: 538,
            onPress: () {
              Navigator.pushNamed(context, DetailsProduct.routeName);
            },
          ),
          RecomendFood(
            image: "assets/images/sagon.png",
            title: "Sagon Khas Malang",
            country: "Malang",
            price: 9000,
            totaltext: "Terjual",
            total: 153,
            onPress: () {
              Navigator.pushNamed(context, DetailsProduct.routeName);
            },
          ),
          RecomendFood(
            image: "assets/images/rendang.png",
            title: "Rendang Padang Frozen",
            country: "Padang",
            price: 55000,
            totaltext: "Terjual",
            total: 2000,
            onPress: () {
              Navigator.pushNamed(context, DetailsProduct.routeName);
            },
          ),
          RecomendFood(
            image: "assets/images/bakpia.png",
            title: "Bakpia Pathok 525",
            country: "Jogja",
            price: 25000,
            totaltext: "Terjual",
            total: 1500,
            onPress: () {
              Navigator.pushNamed(context, DetailsProduct.routeName);
            },
          ),
          RecomendFood(
            image: "assets/images/dodol.png",
            title: "Dodol Garut ",
            country: "Garut",
            price: 20000,
            totaltext: "Terjual",
            total: 631,
            onPress: () {
              Navigator.pushNamed(context, DetailsProduct.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class RecomendFood extends StatelessWidget {
  const RecomendFood({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onPress,
    required this.total,
    required this.totaltext,
  }) : super(key: key);

  final String image, title, country, totaltext;
  final int price, total;
  // ignore: prefer_typing_uninitialized_variables
  final onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPaddin,
        right: kDefaultPaddin / 3,
        top: kDefaultPaddin / 2,
        bottom: kDefaultPaddin * 2,
      ),
      width: size.width * 0.43,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: 220,
            // height: 220,
            fit: BoxFit.contain,
          ),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  // topLeft: Radius.circular(15),
                  // topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 11),
                    blurRadius: 25,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "$country\n",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.withOpacity(1),
                          ),
                        ),
                        TextSpan(
                          text: "\n Rp $price",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Palette.bg1.withOpacity(1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Food extends StatelessWidget {
//   const Food({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           // Container(
//           //     // height: size.height * 45,
//           //     // decoration: BoxDecoration(color: Colors.black),
//           //     ),
//           SafeArea(
//             child: Column(
//               children: <Widget>[
//                 // Container(
//                 //   height: 52,
//                 //   width: 52,
//                 //   decoration: BoxDecoration(color: Colors.white),
//                 // ),
//                 Expanded(
//                   child: GridView.count(
//                     crossAxisCount: 2,
//                     children: <Widget>[
//                       Container(
//                         decoration: BoxDecoration(color: Colors.white),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
