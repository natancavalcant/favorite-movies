import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextFonts {
  static final TextStyle heading_1 = GoogleFonts.notoSans(
    color: AppColors.white,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle heading_2 = GoogleFonts.roboto(
    color: AppColors.grafit,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle heading_6 = GoogleFonts.roboto(
    color: AppColors.grafit,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle heading_0 = GoogleFonts.roboto(
    color: AppColors.blue,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle heading_4 = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );
  static final TextStyle heading_5 = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle entrarButton = GoogleFonts.roboto(
    color: AppColors.red,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle buttonTextFont = GoogleFonts.roboto(
    color: AppColors.blue,
    fontSize: 11,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    textStyle: TextStyle(decoration: TextDecoration.underline),
  );

  static final TextStyle text = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle text_2 = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
  static final TextStyle text_3 = GoogleFonts.roboto(
    color: AppColors.grafit,
    fontSize: 9,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle whiteTextButton = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    textStyle: TextStyle(decoration: TextDecoration.underline),
  );

  static final TextStyle alter = GoogleFonts.roboto(
    color: AppColors.blue,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle textD = GoogleFonts.roboto(
    color: AppColors.blue,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
