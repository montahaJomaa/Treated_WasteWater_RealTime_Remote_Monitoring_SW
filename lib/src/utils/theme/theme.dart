import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget_themes/text_theme.dart';
import 'widget_themes/text_field_theme.dart';

class MyAppTheme {
  MyAppTheme._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: MyhAppTextTheme.lightTextTheme,
    //appBarTheme: MyAppTheme.lightAppBarTheme,
    //elevatedButtonTheme:MyAppElevatedButton.lightElevationButtonTheme,
    //outlinedButtonTheme: MyAppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MyAppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyhAppTextTheme.darkTextTheme,
    //appBarTheme: MyAppTheme.darkAppBarTheme,
    //elevatedButtonTheme:MyAppElevatedButton.darkElevationButtonTheme,
    //outlinedButtonTheme: MyAppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyAppTextFormFieldTheme.lightInputDecorationTheme,
  );
}
