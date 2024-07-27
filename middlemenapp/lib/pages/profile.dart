import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/label_widget.dart';
import 'package:middlemenmodified/widgets/profile%20_setting_form_field_widget.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.bgColorgetstart,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SpaceWidget(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    TextWidget(
                      text: "Profile Setting",
                      textcolor: CustomColors.personheadingColor,
                      fontsize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://plus.unsplash.com/premium_photo-1669882305273-674eff6567af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww"),
                    ),
                  ],
                ),
                const SpaceWidget(
                  height: 15,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: RDottedLineBorder.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        16), // Matching borderRadius with BoxDecoration
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(20), // Adjust as necessary
                        child: const Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://plus.unsplash.com/premium_photo-1669882305273-674eff6567af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SpaceWidget(
                  height: 10,
                ),
                const LabelWidget(
                  texttt: "first name",
                  tColor: Color(0xff8A9099),
                ),
                const SpaceWidget(
                  height: 5,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "Muhammad",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
                const LabelWidget(
                  texttt: "Last name",
                  tColor: Color(0xff8A9099),
                ),
                const SpaceWidget(
                  height: 5,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "Adeel",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
                const LabelWidget(
                  texttt: "Email",
                  tColor: Color(0xff8A9099),
                ),
                const SpaceWidget(
                  height: 5,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "aaaaadirao@gmail.com",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
                const LabelWidget(
                  texttt: "Phone No",
                  tColor: Color(0xff8A9099),
                ),
                const SpaceWidget(
                  height: 5,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "+1 (070) 123–9221",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
                const LabelWidget(
                  texttt: "Change Password",
                  tColor: Color(0xff8A9099),
                ),
                const SpaceWidget(
                  height: 10,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "Old Password",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "New Password",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
                const SettingTextFormFieldWid(
                    hinttext: "Confirm New Password",
                    obscuretext: false,
                    sufficon: Icon(Icons.edit)),
                const SpaceWidget(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
