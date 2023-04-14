import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/screens/cart/cart_screen.dart';
import 'package:kedai_nusantara/screens/transaksi/app_bar.dart';
import 'package:kedai_nusantara/screens/transaksi/itemimage.dart';
import 'package:kedai_nusantara/screens/transaksi/title_price.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({Key? key}) : super(key: key);
  static String routeName = "/detail_product";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bg1,
      appBar: detailsAppBar(context),
      body: const BodyDetails(),
    );
  }
}

class BodyDetails extends StatelessWidget {
  const BodyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Column(
      children: const <Widget>[
        ItemImage(
          imgSrc: "assets/images/bakpia.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: const EdgeInsets.all(35),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            ShopeName(name: "Kota Jogja"),
            const TitlePrice(
              name: "Bakpia Pathok Khas Jogja",
              price: 15,
              numOfReviews: 100,
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Mobile Legends: Bang Bang adalah sebuah permainan MOBA yang dirancang untuk ponsel. Kedua tim lawan berjuang untuk mencapai dan menghancurkan basis musuh sambil mempertahankan basis mereka sendiri untuk mengendalikan jalan setapak, tiga jalur yang dikenal sebagai top, middle dan bottom, yang menghubungkan basis-basis. Di masing-masing tim, ada lima pemain yang masing-masing mengendalikan avatar, yang dikenal sebagai hero, dari perangkat mereka sendiri. Karakter terkontrol komputer yang lebih lemah, yang disebut minions, bertelur di basis tim dan mengikuti tiga jalur ke basis tim lawan, melawan musuh dan menara.",
                style: TextStyle(
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            DefaultButton(
              text: "Order",
              press: () => Navigator.pushNamed(context, CartScreen.routeName),
            ),
            // OrderButton(
            //   size: size,
            //   press: () {},
            // ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row ShopeName({required String name}) {
    return Row(
      children: <Widget>[
        const Icon(
          Icons.location_on,
          color: Colors.grey,
        ),
        const SizedBox(width: 5),
        Text(name),
      ],
    );
  }
}
