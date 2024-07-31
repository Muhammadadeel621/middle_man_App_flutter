import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/chnage_pass.dart';
import 'package:middlemenmodified/pages/login_Screen.dart';
import 'package:middlemenmodified/pages/profile.dart';
import 'package:middlemenmodified/pages/terms_and_cond.dart';
import 'package:middlemenmodified/widgets/listTileWidget.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                  const TextWidget(
                    text: "Settings",
                    textcolor: CustomColors.personheadingColor,
                    fontsize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: CustomColors.bgColor,
                      child: IconButton(
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          icon: const Icon(
                            Icons.logout,
                            color: CustomColors.whiteColor,
                            size: 20,
                          ))),
                ],
              ),
              const SpaceWidget(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "General",
                    textcolor: CustomColors.blkColor,
                    fontsize: 20,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              const listTileWidget(
                textt: "My Profile",
                textSize: 16,
                textColor: CustomColors.bgColor,
                fonttext: "assets/fonts/Poppins-Bold.ttf",
                NavigationScreen: ProfileScreen(),
                // NavigationScreen: ProfileScreen(),
              ),
              const listTileWidget(
                textt: "Contact us",
                textSize: 16,
                textColor: CustomColors.bgColor,
                fonttext: "assets/fonts/Poppins-Bold.ttf",
                NavigationScreen: SettingsScreen(),
              ),
              const SpaceWidget(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Security",
                    textcolor: CustomColors.blkColor,
                    fontsize: 20,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
              const listTileWidget(
                textt: "Change password",
                textSize: 16,
                textColor: CustomColors.bgColor,
                fonttext: "assets/fonts/Poppins-Bold.ttf",
                NavigationScreen: ChangePassScreen(),
                // NavigationScreen: ChangePass(),
              ),
              const listTileWidget(
                textt: "Privacy Policy",
                textSize: 16,
                textColor: CustomColors.bgColor,
                fonttext: "assets/fonts/Poppins-Bold.ttf",
                NavigationScreen: TermsCond(),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Choose what data you share with us",
                    textcolor: CustomColors.bgColor,
                    fontsize: 14,
                  )
                ],
              ),
              const SpaceWidget(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
