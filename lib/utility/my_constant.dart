import 'package:flutter/material.dart';

class MyConstant {
  // Field
  List<String> banners = ['images/banner1.png'];

  Widget mySizebox = SizedBox(
    height: 10.0,
    width: 5.0,
  );

  TextStyle titleH3 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.purple.shade700,
  );

  TextStyle titleH2 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.purple.shade700,
  );

  TextStyle titleH1 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.purple.shade700,
  );

  // Method
  MyConstant();
}
