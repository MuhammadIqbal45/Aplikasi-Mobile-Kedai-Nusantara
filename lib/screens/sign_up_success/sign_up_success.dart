import 'package:flutter/material.dart';
import 'package:kedai_nusantara/screens/sign_up_success/components/body.dart';

class DaftarSuccessScreen extends StatelessWidget {
  const DaftarSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   leading: const SizedBox(),
      //   title: const Text("Daftar Berhasil"),
      // ),
      body: Body(),
    );
  }
}
