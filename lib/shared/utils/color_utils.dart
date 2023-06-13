import 'package:flutter/material.dart';

const Color primaryBrandColor = Color(0xFFFF7000);
const Color brandSecondaryColor = Color(0xff3d4287);
const Color whiteColor = Color(0xffffffff);
const Color greyBackground = Color(0xffE5E5E5);
const Color whiteBackground = Color(0xffffffff);
const Color greyColor = Color(0xff858585);
const Color blackColor = Color(0xff0B0B0B);


MaterialColor customMaterialColor(Color color) {
  final Map<int, Color> shade = {
    50: const Color.fromRGBO(255, 112, 0, 1.0),
    100: const Color.fromRGBO(255, 112, 0, 1.0),
    200: const Color.fromRGBO(255, 112, 0, 1.0),
    300: const Color.fromRGBO(255, 112, 0, 1.0),
    400: const Color.fromRGBO(255, 112, 0, 1.0),
    500: const Color.fromRGBO(255, 112, 0, 1.0),
    600: const Color.fromRGBO(255, 112, 0, 1.0),
    700: const Color.fromRGBO(255, 112, 0, 1.0),
    800: const Color.fromRGBO(255, 112, 0, 1.0),
    900: const Color.fromRGBO(255, 112, 0, 1.0),
  };
  return MaterialColor(color.value, shade);
}