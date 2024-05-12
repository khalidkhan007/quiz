
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String font;
  final double? fontsize;
  final double? fontwegiht;
  final Colors? Color;
  const CustomText({super.key, required this.text, required this.font, required this.fontsize, this.Color, this.fontwegiht});

  @override
  Widget build(BuildContext context) {
    return Container(
        child:  Text(
      text,style: TextStyle(fontFamily: font,fontSize: fontsize,color: Colors.blue),));
  }
}
