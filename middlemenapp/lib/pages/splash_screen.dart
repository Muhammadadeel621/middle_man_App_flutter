import 'dart:async';

import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/get_started_screen.dart';
import 'package:middlemenmodified/pages/login_Screen.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isViewed() async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  int? isSeen = sp.getInt('onboard');
  return isSeen == 0;
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    // bool hasSeenOnboarding = await isViewed();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => (isViewed != 0)
                  ? const LoginScreen()
                  : const GetStartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.bgColor,
      body: Column(
        children: [
          SpaceWidget(height: 200),
          // TextWidget(text: "Middlemen", textcolor: CustomColors.bgColorgetstart),
          Image(image: AssetImage("assets/images/logo.png")),
          SpaceWidget(height: 240),
          Image(image: AssetImage("assets/images/HOUSE.png")),
        ],
      ),
    );
  }
}
