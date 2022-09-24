import 'package:flutter/material.dart';

class Constants {
  final primaryColor = const Color(0xFF15AC51);
}

const textInputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF15AC51), width: 2)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF15AC51), width: 2)),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF15AC51), width: 2)));

const lineInputDecoration = InputDecoration(
    hintStyle: TextStyle(
      color: Color(0xFF15AC51),
    ),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF15AC51), width: 2)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF15AC51), width: 2)),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF15AC51), width: 2)));
