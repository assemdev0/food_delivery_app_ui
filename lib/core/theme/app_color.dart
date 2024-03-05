import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFFFA4A0C);
  static const backgroundColor = Color(0xFFF2F2F2);
  static const blackColor = Color(0xFF000000);
  static final blackWithOpacityColor = const Color(0xFF000000).withOpacity(0.5);
  static const whiteColor = Color(0xFFFFFFFF);
  static const greyColor = Color(0xFF9A9A9D);
  static const textFormFieldFilledColor = Color(0xFFEFEEEE);

  static const MaterialColor primaryMaterialColor = MaterialColor(
    0xffFA4A0C,
    {
      50: Color(0x1afa4a0c),
      100: Color(0x33fa4a0c),
      200: Color(0x4dfa4a0c),
      300: Color(0x66fa4a0c),
      400: Color(0x80fa4a0c),
      500: Color(0x99fa4a0c),
      600: Color(0xb3fa4a0c),
      700: Color(0xccfa4a0c),
      800: Color(0xe6fa4a0c),
      900: Color(0xffFA4A0C),
    },
  );

  static const Color transparentColor = Colors.transparent;
}
