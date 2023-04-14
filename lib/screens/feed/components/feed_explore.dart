import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:kedai_nusantara/components/default_button.dart';
import 'package:kedai_nusantara/constants.dart';

class FeedExplore extends StatefulWidget {
  const FeedExplore({Key? key}) : super(key: key);

  @override
  _FeedExploreState createState() => _FeedExploreState();
}

class _FeedExploreState extends State<FeedExplore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Notif Toko"),
      // ),
      body: ListView(
        children: const [
          // Row(),
          SizedBox(height: 20),
          FeedBox(
            caption:
                'Ready Stok Bakpia Pathok. Buruan Beli !! Ready Stok Bakpia Pathok Ready Stok Bakpia Pathok. Buruan Beli !! Ready Stok Bakpia Pathok. Buruan Beli !!',
            fotoProduk: 'assets/images/bakpia.png',
            fotoProfil: 'assets/images/user_2.png',
            komen: '100',
            like: '2.500',
            nama: 'Muhammad Iqbal',
            waktu: '5 Menit yang lalu',
          ),
          SizedBox(height: 10),
          FeedBox(
            caption: 'Ready Stok Bakpia Pathok. Buruan Beli !!',
            fotoProduk: 'assets/images/bakpia.png',
            fotoProfil: 'assets/images/user_3.png',
            komen: '150',
            like: '500',
            nama: 'Muhammad Iqbal',
            waktu: '45 Menit yang lalu',
          ),
          SizedBox(height: 10),
          FeedBox(
            caption: 'Ready Stok Bakpia Pathok. Buruan Beli !!',
            fotoProduk: 'assets/images/bakpia.png',
            fotoProfil: 'assets/images/user_4.png',
            komen: '1000',
            like: '2.673',
            nama: 'Muhammad Iqbal',
            waktu: '1 Jam yang lalu',
          ),
          SizedBox(height: 10),
          FeedBox(
            caption: 'Ready Stok Bakpia Pathok. Buruan Beli !!',
            fotoProduk: 'assets/images/bakpia.png',
            fotoProfil: 'assets/images/user_4.png',
            komen: '10',
            like: '26',
            nama: 'Muhammad Iqbal',
            waktu: '1 Jam yang lalu',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class FeedBox extends StatelessWidget {
  const FeedBox({
    Key? key,
    required this.fotoProfil,
    required this.fotoProduk,
    required this.nama,
    required this.waktu,
    required this.caption,
    required this.like,
    required this.komen,
  }) : super(key: key);

  final String fotoProfil, fotoProduk, nama, waktu, caption, like, komen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        // height: 470.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              // offset: Offset(5, 5),
              blurRadius: 3.3,
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(fotoProfil),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      nama,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.bg1,
                      ),
                    ),
                    subtitle: Text(
                      waktu,
                      style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                    trailing: IconButton(
                      // ignore: avoid_print
                      onPressed: () => print('More'),
                      icon: const Icon(Icons.more_vert),
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 24),
                    child: Text(
                      caption,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 240.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: const [
                        // BoxShadow(
                        //   color: Colors.black45,
                        //   // offset: Offset(0, 5),
                        //   blurRadius: 8.8,
                        // ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(fotoProduk),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  // ignore: avoid_print
                                  onPressed: () => print('Sukai'),
                                  icon: const Icon(Icons.favorite_border),
                                  color: Palette.bg1,
                                  iconSize: 30.0,
                                ),
                              ],
                            ),
                            // Text(
                            //   like,
                            //   style: const TextStyle(
                            //       fontSize: 14.0, fontWeight: FontWeight.w600),
                            // ),
                            Row(
                              children: [
                                IconButton(
                                  // ignore: avoid_print
                                  onPressed: () => print('Komen'),
                                  icon: SvgPicture.asset(
                                    "assets/icons/chatkomen.svg",
                                    color: Palette.bg1,
                                  ),
                                  // icon: const Icon(Icons.comment_outlined),
                                  // color: Palette.bg1,
                                  // iconSize: 1.0,
                                ),
                                // Text(
                                //   komen,
                                //   style: const TextStyle(
                                //       fontSize: 14.0,
                                //       fontWeight: FontWeight.w600),
                                // ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  // ignore: avoid_print
                                  onPressed: () => print('Bagikan'),
                                  icon: const Icon(Icons.share_outlined),
                                  color: Palette.bg1,
                                  iconSize: 30.0,
                                ),
                                // const Text(
                                //   "Bagikan",
                                //   style: TextStyle(
                                //       fontSize: 14.0,
                                //       fontWeight: FontWeight.w600),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 285),
                    child: Text(
                      like,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.bg1,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
