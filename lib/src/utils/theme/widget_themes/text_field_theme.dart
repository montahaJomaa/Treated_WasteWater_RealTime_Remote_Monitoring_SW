import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class MyAppTextFormFieldTheme {
  MyAppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: SecondaryColor,
      floatingLabelStyle: TextStyle(color: SecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(width: 2, color: SecondaryColor),
      ));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: PrimaryColor,
      floatingLabelStyle: TextStyle(color: PrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(width: 2, color: PrimaryColor),
      ));
}
