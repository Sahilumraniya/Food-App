import 'package:flutter/material.dart';

class AppWiget {
  static TextStyle boldTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins");
  }

  static TextStyle HeadLineTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins");
  }

  static TextStyle LightTextFeildStyle() {
    return const TextStyle(
        color: Colors.black38,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins");
  }

  static TextStyle semiBoldTextFeildStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: "Poppins");
  }
}
