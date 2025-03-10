import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget(
      {super.key,
      required this.texttt,
      this.tColor = CustomColors.getstrwelcome});

  final String texttt;
  final Color? tColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidget(
          text: texttt,
          textcolor: tColor!,
          fontsize: 14,
          fontWeight: FontWeight.w400,
          fontfamily: "assets/fonts/Poppins-Medium.ttf",
        )
      ],
    );
  }
}
