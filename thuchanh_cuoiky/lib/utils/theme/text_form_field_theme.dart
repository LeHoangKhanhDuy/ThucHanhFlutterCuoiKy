import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: Colors.black,
    floatingLabelStyle: TextStyle(color: Colors.blue),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.black)),
  );
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: Colors.white,
    floatingLabelStyle: TextStyle(color: Colors.blue),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.white)),
  );
}
