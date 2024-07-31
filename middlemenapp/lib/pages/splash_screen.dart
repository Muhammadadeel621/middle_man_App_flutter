import 'dart:async';
import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/get_started_screen.dart';
import 'package:middlemenmodified/pages/login_Screen.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';

class SplashScreen extends StatefulWidget {
  final int? isSeen;
  const SplashScreen({super.key, this.isSeen});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      if (widget.isSeen != 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const GetStartedScreen()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.bgColor,
      body: Column(
        children: [
          SpaceWidget(height: 200),
          Image(image: AssetImage("assets/images/logo.png")),
          SpaceWidget(height: 240),
          Image(image: AssetImage("assets/images/HOUSE.png")),
        ],
      ),
    );
  }
}
