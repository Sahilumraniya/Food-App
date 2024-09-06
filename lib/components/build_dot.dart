import 'package:flutter/material.dart';

Container buildDot(int index, BuildContext context, int currentIndex) {
  return Container(
    height: 10,
    width: currentIndex == index ? 20 : 10,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      color: currentIndex == index ? Colors.black : Colors.grey,
      borderRadius: BorderRadius.circular(6),
    ),
  );
}
