
import 'package:flutter/material.dart';

class AppColors {
  const AppColors();

  static const Color baseLightLight20 = Color(0xff91919f);
  static const Color baseLightLight40 = Color(0xffe3e5e5);
  static const Color baseLightLight60 = Color(0xfff1f1fa);
  static const Color baseLightLight80 = Color(0xfffcfcfc);
  static const Color baseLightLight100 = Color(0xffffffff);
  static const Color baseDarkDark100 = Color(0xff0d0e0f);
  static const Color baseDarkDark75 = Color(0xff161719);
  static const Color baseDarkDark50 = Color(0xff212325);
  static const Color baseDarkDark25 = Color(0xff292b2d);
  static const Color violetViolet100 = Color(0xff7f3dff);
  static const Color violetViolet80 = Color(0xff8f57ff);
  static const Color violetViolet60 = Color(0xffb18aff);
  static const Color violetViolet40 = Color(0xffd3bdff);
  static const Color violetViolet20 = Color(0xffeee5ff);
  static const Color blueBlue100 = Color(0xff0077ff);
  static const Color blueBlue80 = Color(0xff248aff);
  static const Color blueBlue60 = Color(0xff57a5ff);
  static const Color blueBlue40 = Color(0xff8ac0ff);
  static const Color blueBlue20 = Color(0xffbddcff);
  static const Color redRed100 = Color(0xfffd3c4a);
  static const Color redRed80 = Color(0xfffd5662);
  static const Color redRed60 = Color(0xfffd6f7a);
  static const Color redRed40 = Color(0xfffda2a9);
  static const Color redRed20 = Color(0xfffdd5d7);
  static const Color greenGreen100 = Color(0xff00a86b);
  static const Color greenGreen80 = Color(0xff2ab784);
  static const Color greenGreen60 = Color(0xff65d1aa);
  static const Color greenGreen40 = Color(0xff93eaca);
  static const Color greenGreen20 = Color(0xffcffaea);
  static const Color yellowYellow100 = Color(0xfffcac12);
  static const Color yellowYellow80 = Color(0xfffcbb3c);
  static const Color yellowYellow60 = Color(0xfffccc6f);
  static const Color yellowYellow40 = Color(0xfffcdda1);
  static const Color yellowYellow20 = Color(0xfffceed4);

}



class FigmaTextStyles {
  const FigmaTextStyles();


  TextStyle get tiny => const TextStyle(
    fontSize: 12,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Medium',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 12 / 12,
    letterSpacing: 0,
  );

  TextStyle get small => const TextStyle(
    fontSize: 13,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Medium',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 16 / 13,
    letterSpacing: 0,
  );

  TextStyle get bodyBody3 => const TextStyle(
    fontSize: 14,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Medium',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 18 / 14,
    letterSpacing: 0,
  );

  TextStyle get bodyBody2 => const TextStyle(
    fontSize: 16,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Semi Bold',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: 16 / 16,
    letterSpacing: 0,
  );

  TextStyle get bodyBody1 => const TextStyle(
    fontSize: 16,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Medium',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 16 / 16,
    letterSpacing: 0,
  );

  TextStyle get titleTitle3 => const TextStyle(
    fontSize: 18,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Semi Bold',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: 18 / 18,
    letterSpacing: 0,
  );

  TextStyle get titleTitle2 => const TextStyle(
    fontSize: 24,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Semi Bold',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: 24 / 24,
    letterSpacing: 0,
  );

  TextStyle get titleTitle1 => const TextStyle(
    fontSize: 32,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Bold',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: 39 / 32,
    letterSpacing: 0,
  );

  TextStyle get titleTitleX => const TextStyle(
    fontSize: 64,
    decoration: TextDecoration.none,
    fontFamily: 'Inter-Bold',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: 80 / 64,
    letterSpacing: 0,
  );

}
