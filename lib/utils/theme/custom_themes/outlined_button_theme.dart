import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(fontSize: 16.0 , color: Colors.black , fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0))
    ),
  );
  static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.blueAccent),
        textStyle: const TextStyle(fontSize: 16.0 , color: Colors.white , fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 20.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0))
    ),
  );
}