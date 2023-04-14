import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/custom_bottom_navbar.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/enums.dart';
import 'package:kedai_nusantara/screens/cart/cart_screen.dart';

import 'package:kedai_nusantara/screens/chat/chat_screen.dart';
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';
import 'package:kedai_nusantara/screens/notifikasi/components/notif_saya.dart';
import 'package:kedai_nusantara/screens/notifikasi/components/notif_toko.dart';

class NotifikasiScreen extends StatefulWidget {
  const NotifikasiScreen({Key? key}) : super(key: key);
  static String routeName = "/notifikasi";

  @override
  State<NotifikasiScreen> createState() => _NotifikasiScreenState();
}

class _NotifikasiScreenState extends State<NotifikasiScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // ignore: unused_field
  late int _activeTabIndex;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 20,
        title: const Text(
          "Notifikasi",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Palette.bg1,
          labelColor: Palette.bg1,
          unselectedLabelColor: Colors.grey,
          labelPadding: const EdgeInsets.all(0),
          tabs: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Notifikasi Saya",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Notifikasi Toko",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            // Tab(text: 'Notifikasi Toko'),
            // Tab(text: 'Notifikasi Saya'),
          ],
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Palette.bg1,
        actions: <Widget>[
          IconBtnWithCounter(
            svgSrc: "assets/icons/cart.svg",
            numOfitem: 3,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/chathome.svg",
            numOfitem: 3,
            press: () {
              Navigator.pushNamed(context, ChatScreen.routeName);
            },
          ),
          const SizedBox(width: kDefaultPaddin / 2),
        ],
      ),
      // body: const Body(),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const NotifSaya(),
          const NotifToko(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedMenu: MenuState.notifikasi,
      ),
    );
  }
}
