import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/enums.dart';
import 'package:kedai_nusantara/profile/profile_screen.dart';
import 'package:kedai_nusantara/screens/branding/branding_screen.dart';
import 'package:kedai_nusantara/screens/feed/feed_screen.dart';
import 'package:kedai_nusantara/screens/home/home_screen.dart';
import 'package:kedai_nusantara/screens/notifikasi/notifikasi_screen.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: prefer_const_declarations, unused_local_variable
    final Color inActiveIconColor = const Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            color: Colors.black,
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              iconSize: 50,
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/Shop Icon.svg",
                    // width: 10,
                    // height: 25,
                    color: MenuState.home == selectedMenu
                        ? Palette.bg1
                        : inActiveIconColor,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Beranda",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: MenuState.home == selectedMenu
                          ? Palette.bg1
                          : inActiveIconColor,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, BrandingScreen.routeName),
              iconSize: 50,
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.border_color_outlined,
                    size: 20,
                    color: MenuState.branding == selectedMenu
                        ? Palette.bg1
                        : inActiveIconColor,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Branding",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: MenuState.branding == selectedMenu
                          ? Palette.bg1
                          : inActiveIconColor,
                    ),
                  ),
                ],
              ),
            ),
            // IconButton(
            //   onPressed: () =>
            //       Navigator.pushNamed(context, BrandingScreen.routeName),
            //   icon: Icon(
            //     Icons.border_color_outlined,
            //     color: MenuState.branding == selectedMenu
            //         ? Palette.bg1
            //         : inActiveIconColor,
            //   ),
            // ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, FeedScreen.routeName),
              iconSize: 50,
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_box_rounded,
                    size: 20,
                    color: MenuState.feed == selectedMenu
                        ? Palette.bg1
                        : inActiveIconColor,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Feed",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: MenuState.feed == selectedMenu
                          ? Palette.bg1
                          : inActiveIconColor,
                    ),
                  ),
                ],
              ),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.add_box_rounded,
            //     color: MenuState.feed == selectedMenu
            //         ? Palette.bg1
            //         : inActiveIconColor,
            //   ),
            // ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, NotifikasiScreen.routeName),
              iconSize: 50,
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle_notifications,
                    size: 20,
                    color: MenuState.notifikasi == selectedMenu
                        ? Palette.bg1
                        : inActiveIconColor,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Notifikasi",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: MenuState.notifikasi == selectedMenu
                          ? Palette.bg1
                          : inActiveIconColor,
                    ),
                  ),
                ],
              ),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.circle_notifications,
            //     color: MenuState.notifikasi == selectedMenu
            //         ? Palette.bg1
            //         : inActiveIconColor,
            //   ),
            // ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
              iconSize: 50,
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_outline,
                    size: 20,
                    color: MenuState.profile == selectedMenu
                        ? Palette.bg1
                        : inActiveIconColor,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: MenuState.profile == selectedMenu
                          ? Palette.bg1
                          : inActiveIconColor,
                    ),
                  ),
                ],
              ),
            ),
            // IconButton(
            //   onPressed: () =>
            //       Navigator.pushNamed(context, ProfileScreen.routeName),
            //   icon: Icon(
            //     Icons.person_outline,
            //     color: MenuState.profile == selectedMenu
            //         ? Palette.bg1
            //         : inActiveIconColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
