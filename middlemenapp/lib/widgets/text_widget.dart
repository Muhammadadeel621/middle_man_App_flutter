import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.fontsize,
      required this.textcolor,
      this.fontWeight,
      this.fontfamily,
      this.textalign,
      this.textdecoration});

  final String text;
  final double? fontsize;
  final Color textcolor;
  final FontWeight? fontWeight;
  final String? fontfamily;
  final TextAlign? textalign;
  final TextDecoration? textdecoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textalign,
      text,
      style: TextStyle(
        decoration: textdecoration,
        decorationThickness: 2.0,
        fontSize: fontsize,
        color: textcolor,
        fontWeight: fontWeight,
        fontFamily: fontfamily,
      ),
    );
  }
}
