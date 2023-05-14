import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color colorBlack = const Color(0xff1e1d2d);
Color colorWhite = const Color(0xffffffff);
Color colorDirtBlue = const Color(0xff404855);

TextStyle get titleStyle {
  return GoogleFonts.rubik(
    textStyle: TextStyle(
      color: colorBlack,
      fontSize: 30,
      fontWeight: FontWeight.w600
    )
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.rubik(
    textStyle: TextStyle(
      color: colorWhite,
      fontSize: 14,
      fontWeight: FontWeight.normal
    )
  );
}


