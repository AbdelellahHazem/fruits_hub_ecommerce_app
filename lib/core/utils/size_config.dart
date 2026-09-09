import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;

  static late double height;
  static late double width;

  static void init(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    height = size.height;
    width = size.width;
  }
}
