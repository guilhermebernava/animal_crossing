import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static final searchText = GoogleFonts.roboto(
    fontSize: 18,
    color: AppColors.black,
  );

  static final searchError = GoogleFonts.roboto(
    fontSize: 16,
    color: Colors.red,
  );

  static final coreGridItem = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
