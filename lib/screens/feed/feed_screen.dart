import 'package:flutter/material.dart';
import 'package:kedai_nusantara/components/custom_bottom_navbar.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/enums.dart';
import 'package:kedai_nusantara/screens/cart/cart_screen.dart';
import 'package:kedai_nusantara/screens/chat/chat_screen.dart';
import 'package:kedai_nusantara/screens/feed/components/feed_update.dart';
import 'package:kedai_nusantara/screens/feed/components/feed_explore.dart';
import 'package:kedai_nusantara/screens/home/components/icon_btn_with_counter.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);
  static String routeName = "/feed";

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen>
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
        title: TextField(
          onChanged: (value) {},
          // readOnly: true,
          style: const TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              // borderSide: const BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
            // enabledBorder: InputBorder.none,
            // focusedBorder: InputBorder.none,
          ),
        ),
        leading: const SizedBox(),
        leadingWidth: 10,
        elevation: 0,
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
                "Update",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Explore",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            // Tab(text: 'Notifikasi Toko'),
            // Tab(text: 'Notifikasi Saya'),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const FeedUpdate(),
          const FeedExplore(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavbar(
        selectedMenu: MenuState.feed,
      ),
    );
  }
}
