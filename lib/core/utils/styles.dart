import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  // headings
  static TextStyle textH32 = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.5,
  );
  static TextStyle textH24 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );
  static TextStyle textH18 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  // body Text
  static TextStyle bodyLarge16 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyMedium15 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
  );
  static TextStyle bodySmall14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // button Text
  static TextStyle buttonLarge16 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
  static TextStyle buttonMedium15 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static TextStyle buttonSmall14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  // label text
  static TextStyle labelMedium14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  // helper functions for color veriations
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  //
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }
}
