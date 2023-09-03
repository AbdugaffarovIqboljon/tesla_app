import 'package:flutter/material.dart';

import 'colors.dart';


abstract class CustomFonts {
  static const gotham = "gotham";

  static TextStyle modelY() {
    return const TextStyle(
      fontSize: 36,
      color: CustomColors.white,
      fontFamily: CustomFonts.gotham,
    );
  }

  static TextStyle modelY2() {
    return const TextStyle(
      fontSize: 40,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.white,
    );
  }

  static TextStyle modelYtab() {
    return const TextStyle(
      fontSize: 28,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.grey,
    );
  }

  static TextStyle range() {
    return const TextStyle(
      fontSize: 36,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.white,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle rangeSub() {
    return const TextStyle(
      fontSize: 14,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.white,
    );
  }

  static TextStyle acceleration1() {
    return const TextStyle(
      fontSize: 18,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.grey,
    );
  }

  static TextStyle acceleration2() {
    return const TextStyle(
      fontSize: 18,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.white,
    );
  }

  static TextStyle orderNow() {
    return const TextStyle(
      fontSize: 18,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.white,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle tapBar() {
    return const TextStyle(
        fontSize: 15,
        fontFamily: CustomFonts.gotham,
        fontWeight: FontWeight.w600);
  }

  static TextStyle select() {
    return const TextStyle(
      fontSize: 18,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.lightGrey,
    );
  }

  static TextStyle performance() {
    return const TextStyle(
        fontSize: 20.7,
        fontFamily: CustomFonts.gotham,
        color: CustomColors.darkBlack);
  }

  static TextStyle performanceCost() {
    return const TextStyle(
        fontSize: 20.5,
        fontFamily: CustomFonts.gotham,
        color: CustomColors.red);
  }

  static TextStyle longRange() {
    return const TextStyle(
        fontSize: 21, fontFamily: CustomFonts.gotham, color: CustomColors.grey);
  }

  static TextStyle longRangeCost() {
    return const TextStyle(
      fontSize: 21,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.lightGrey,
    );
  }

  static TextStyle acceleration() {
    return const TextStyle(
      fontSize: 27,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.darkBlack,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle accelerationSpeed() {
    return TextStyle(
      fontSize: 15,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle information() {
    return const TextStyle(
      letterSpacing: 0.4,
      height: 1.2,
      fontSize: 15,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.grey,
    );
  }

  static TextStyle performanceCost2() {
    return const TextStyle(
      fontSize: 22,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.darkBlack,
    );
  }

  static TextStyle next() {
    return const TextStyle(
        fontSize: 18,
        fontFamily: CustomFonts.gotham,
        color: CustomColors.darkBlack,
        fontWeight: FontWeight.w500);
  }

  static TextStyle wheels() {
    return const TextStyle(
      letterSpacing: 0.7,
      fontSize: 15,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.darkBlack,
    );
  }

  static TextStyle pay() {
    return const TextStyle(
      fontSize: 25,
      fontFamily: CustomFonts.gotham,
      color: CustomColors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle configurationPriceTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gotham,
      fontSize: 20,
      color: color,
    );
  }
}
