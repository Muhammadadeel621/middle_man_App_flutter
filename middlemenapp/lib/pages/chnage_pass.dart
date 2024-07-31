import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/label_widget.dart';
import 'package:middlemenmodified/widgets/profile%20_setting_form_field_widget.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({super.key});

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColorgetstart,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SpaceWidget(
              height: 35,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back)),
                const SpaceWidget(
                  width: 60,
                ),
                const TextWidget(
                  text: "Change Password",
                  textcolor: CustomColors.personheadingColor,
                  fontsize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SpaceWidget(
              height: 30,
            ),
            const LabelWidget(
              texttt: "Change Password",
              tColor: Color(0xff8A9099),
            ),
            const SpaceWidget(
              height: 20,
            ),
            const SettingTextFormFieldWid(
                hinttext: "Old Password",
                obscuretext: true,
                sufficon: Icon(Icons.edit)),
            const SpaceWidget(
              height: 20,
            ),
            const SettingTextFormFieldWid(
                hinttext: "New Password",
                obscuretext: true,
                sufficon: Icon(Icons.edit)),
            const SpaceWidget(
              height: 20,
            ),
            const SettingTextFormFieldWid(
                hinttext: "Confirm New Password",
                obscuretext: true,
                sufficon: Icon(Icons.edit)),
            const SpaceWidget(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
