import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      required this.hinttext,
      this.preicon,
      this.sufficon,
      this.obscuretext,
      this.texttype});

  final String hinttext;
  final Icon? preicon;
  final Icon? sufficon;
  final bool? obscuretext;
  final TextInputType? texttype;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext!,
      keyboardType: texttype,
      decoration: InputDecoration(
          hintText: hinttext,
          fillColor: CustomColors.textformFeildColor,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: CustomColors.textformFeildborColor)),
          hintStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              fontFamily: "assets/fonts/Poppins-Medium.ttf"),
          prefixIcon: preicon,
          suffixIcon: sufficon),
    );
  }
}
