import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';

class NotifSaya extends StatefulWidget {
  const NotifSaya({Key? key}) : super(key: key);

  @override
  _NotifSayaState createState() => _NotifSayaState();
}

class _NotifSayaState extends State<NotifSaya> {
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
          NotifBox(
            caption:
                'Paket dari pesanan 1923612736 telah dikirimkan oleh User melalui termasuk ongkos kirim. klik di sini untuk melihat pesanan dan melacak paket kamu',
            fotoProfil: 'assets/images/bakpia.png',
            judul: 'Dikirimkan',
            waktu: '3 Jam yang lalu',
          ),
          SizedBox(height: 5),
          NotifBox(
            caption:
                'Paket dari pesanan 1923612736 telah diterima oleh Penerima Muhammad. klik di sini untuk melihat pesanan dan melacak paket kamu',
            fotoProfil: 'assets/images/dodol.png',
            judul: 'Pesanan Diterima',
            waktu: '1 Hari yang lalu',
          ),
          SizedBox(height: 5),
          NotifBox(
            caption:
                'Paket dari pesanan 1923612736 telah diterima oleh Penerima Muhammad. klik di sini untuk melihat pesanan dan melacak paket kamu',
            fotoProfil: 'assets/images/rendang.png',
            judul: 'Pesanan Diterima',
            waktu: '1 Hari yang lalu',
          ),
          SizedBox(height: 5),
          NotifBox(
            caption:
                'Paket dari pesanan 1923612736 telah diterima oleh Penerima Muhammad. klik di sini untuk melihat pesanan dan melacak paket kamu',
            fotoProfil: 'assets/images/sagon.png',
            judul: 'Pesanan Diterima',
            waktu: '3 Hari yang lalu',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class NotifBox extends StatelessWidget {
  const NotifBox({
    Key? key,
    required this.fotoProfil,
    required this.judul,
    required this.caption,
    required this.waktu,
  }) : super(key: key);

  final String fotoProfil, judul, caption, waktu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
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
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipRect(
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
                      judul,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.bg1,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      caption,
                      style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Row(
                      children: [
                        const Icon(
                          (Icons.timer),
                          size: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            waktu,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 10, left: 24),
                  //   child: Text(
                  //     caption,
                  //     style: const TextStyle(fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  // Container(
                  //   margin: const EdgeInsets.all(10.0),
                  //   width: double.infinity,
                  //   height: 240.0,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(25.0),
                  //     boxShadow: const [
                  //       // BoxShadow(
                  //       //   color: Colors.black45,
                  //       //   // offset: Offset(0, 5),
                  //       //   blurRadius: 8.8,
                  //       // ),
                  //     ],
                  //     // image: DecorationImage(
                  //     //   image: AssetImage(fotoProduk),
                  //     //   fit: BoxFit.fitWidth,
                  //     // ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
