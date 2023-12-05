import 'package:flutter/material.dart';

const Color klightBlack = Color.fromARGB(255, 44, 44, 44);
const Color kgrey = Color.fromRGBO(142, 142, 143, 1.000);
const Color kblack = Colors.black;
const Color klightGrey = Color.fromRGBO(166, 163, 163, 0.098);
const Color kMainBlack = Color.fromRGBO(29, 29, 31, 1.000);
const Color klightOrange = Color.fromRGBO(255, 168, 0, 1.000);
const Color kyellow = Color.fromRGBO(255, 200, 0, 1.000);
const Color kwhite = Colors.white;

double? kheight;
double? kwidth;
sizedboxwithheight(double? height) {
  return SizedBox(height: height);
}

sizedboxwithWidth(double? width) {
  return SizedBox(width: width);
}

Widget text15Withbold(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
  );
}
