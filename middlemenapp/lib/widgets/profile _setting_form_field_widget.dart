import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';

class SettingTextFormFieldWid extends StatelessWidget {
  const SettingTextFormFieldWid(
      {super.key,
      required this.hinttext,
      this.sufficon,
      this.obscuretext,
      this.texttype});

  final String hinttext;
  final Icon? sufficon;
  final bool? obscuretext;
  final TextInputType? texttype;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext!,
      keyboardType: texttype,
      decoration: InputDecoration(
          isDense: true,
          hintText: hinttext,
          fillColor: CustomColors.systemtextformFeildColor,
          // fillColor: Colors.black,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: CustomColors.systextformFeildborColor)),
          hintStyle: const TextStyle(
              color: Color(0xff8A9099),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontFamily: "assets/fonts/Poppins-Medium.ttf"),
          suffixIcon: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffC6C9CC)),
                color: CustomColors.whiteColor,
                borderRadius: BorderRadius.circular(50)),
            child: sufficon,
          )),
    );
  }
}
