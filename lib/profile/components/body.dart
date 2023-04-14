import 'package:flutter/material.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/profile/components/header.dart';

import 'package:kedai_nusantara/profile/components/profile_menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(size: size),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              "Aktivitas Saya",
              style: TextStyle(
                color: Palette.bg1,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ProfileMenu(
            icon: "assets/icons/cart.svg",
            text: "Keranjang",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/chathome.svg",
            text: "Chat",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/starpatrik.svg",
            text: "Ulasan",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/note.svg",
            text: "Semua Transaksi",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/favorittt.svg",
            text: "Toko Favorit",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/feed.svg",
            text: "Feed Saya",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Shop Icon.svg",
            text: "Toko Saya",
            press: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Text(
              "Layanan Lainnya",
              style: TextStyle(
                color: Palette.bg1,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ProfileMenu(
            icon: "assets/icons/addfriend.svg",
            text: "Undang Teman",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",
            text: "Pengaturan",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/mail2.svg",
            text: "Komplain",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/User.svg",
            text: "Bantuan",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            text: "Tentang Kami",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",
            text: "Keluar",
            press: () {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
