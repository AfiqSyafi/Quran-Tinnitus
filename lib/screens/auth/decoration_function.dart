import 'package:flutter/material.dart';
import 'package:quran_tinnitus/config/palette.dart';

InputDecoration registerInputDecoration({String hintText}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
    hintText: hintText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.lightGreen),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Palette.lightGreen),
    ),
    errorStyle: const TextStyle(color: Colors.white),
  );
}

InputDecoration signInInputDecoration({String hintText}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: const TextStyle(fontSize: 18),
    hintText: hintText,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Palette.darkRed),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.darkGreen),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.darkGreen),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Palette.darkGreen),
    ),
    errorStyle: const TextStyle(color: Palette.darkGreen),
  );
}