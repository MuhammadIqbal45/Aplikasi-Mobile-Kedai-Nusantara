import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:kedai_nusantara/constants.dart';
import 'package:kedai_nusantara/launcher.dart';
// ignore: unused_import
import 'package:kedai_nusantara/profile/profile_screen.dart';
import 'package:kedai_nusantara/route.dart';
// ignore: unused_import
import 'package:kedai_nusantara/screens/splash/splash_screen.dart';
import 'package:kedai_nusantara/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kedai Nusantara',
      theme: theme(),
      // home: const LauncherPage(),
      initialRoute: LauncherPage.routeName,
      routes: routes,
    );
  }
}
