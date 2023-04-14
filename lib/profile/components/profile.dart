import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kedai_nusantara/constants.dart';

Padding profile() {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 8,
            color: Colors.black.withOpacity(0.25),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              const Text(
                "Muhammad Iqbal Hanif Firdaus",
                textAlign: TextAlign.center,
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/edit.svg",
                  height: 10,
                  width: 15,
                  color: Palette.bg1,
                ),
              ),
            ],
          ),
          // const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 10),
              Text("Pengikut"),
              SizedBox(width: 20),
              Text(
                "|",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              Text("Mengikuti"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(width: 20),
              Text("100"),
              SizedBox(width: 70),
              Text("10000"),
            ],
          ),
        ],
      ),
    ),
  );
}
