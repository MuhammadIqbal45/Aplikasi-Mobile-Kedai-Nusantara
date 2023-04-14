import 'package:flutter/material.dart';
import 'package:kedai_nusantara/launcher.dart';
import 'package:kedai_nusantara/profile/profile_screen.dart';
import 'package:kedai_nusantara/screens/branding/branding_screen.dart';
import 'package:kedai_nusantara/screens/cart/cart_screen.dart';
import 'package:kedai_nusantara/screens/chat/chat_screen.dart';
import 'package:kedai_nusantara/screens/chat_detail/message_screen.dart';
import 'package:kedai_nusantara/screens/complete_profile/complete_profile_screen.dart';
import 'package:kedai_nusantara/screens/feed/feed_screen.dart';
import 'package:kedai_nusantara/screens/forgot_password/forgot_password_screen.dart';
import 'package:kedai_nusantara/screens/home/home_screen.dart';
import 'package:kedai_nusantara/screens/notifikasi/notifikasi_screen.dart';
import 'package:kedai_nusantara/screens/otp/otp_screen.dart';
import 'package:kedai_nusantara/screens/sign_in/sign_in_screen.dart';
import 'package:kedai_nusantara/screens/sign_up/sign_up_screen.dart';
import 'package:kedai_nusantara/screens/sign_up_success/sign_up_success.dart';
import 'package:kedai_nusantara/screens/splash/splash_screen.dart';
import 'package:kedai_nusantara/screens/transaksi/details_product.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  LauncherPage.routeName: (context) => const LauncherPage(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  DaftarSuccessScreen.routeName: (context) => const DaftarSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsProduct.routeName: (context) => const DetailsProduct(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  BrandingScreen.routeName: (context) => const BrandingScreen(),
  ChatScreen.routeName: (context) => const ChatScreen(),
  MessageScreen.routeName: (context) => const MessageScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  NotifikasiScreen.routeName: (context) => const NotifikasiScreen(),
  FeedScreen.routeName: (context) => const FeedScreen(),
};
