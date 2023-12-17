import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  const AppTextStyles();

  TextStyle get tiny => GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        height: 12 / 12,
        letterSpacing: 0,
      );

  TextStyle get small => GoogleFonts.inter(
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        height: 16 / 13,
        letterSpacing: 0,
      );

  TextStyle get bodyBody3 => GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        height: 18 / 14,
        letterSpacing: 0,
      );

  TextStyle get bodyBody2 => GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        height: 16 / 16,
        letterSpacing: 0,
      );

  TextStyle get bodyBody1 => GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        height: 16 / 16,
        letterSpacing: 0,
      );

  TextStyle get titleTitle3 => GoogleFonts.inter(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        height: 18 / 18,
        letterSpacing: 0,
      );

  TextStyle get titleTitle2 => GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        height: 24 / 24,
        letterSpacing: 0,
      );

  TextStyle get titleTitle1 => GoogleFonts.inter(
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        height: 39 / 32,
        letterSpacing: 0,
      );

  TextStyle get titleTitleX => GoogleFonts.inter(
        fontSize: 64.sp,
        fontWeight: FontWeight.w700,
        height: 80 / 64,
        letterSpacing: 0,
      );
}
