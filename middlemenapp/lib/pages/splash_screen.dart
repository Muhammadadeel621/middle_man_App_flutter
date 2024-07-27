import 'dart:async';

import 'package:flutter/material.dart';
import 'package:middlemenapp/constants/colors.dart';
import 'package:middlemenapp/pages/get_started_screen.dart';
import 'package:middlemenapp/widgets/space_widget.dart';
// import 'package:middlemenapp/widgets/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const GetStartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.bgColor,
      body: Column(
        children: [
          SpaceWidget(
            height: 200,
          ),
          // TextWidget(text: "Middlemen", textcolor: CustomColors.bgColorgetstart,),
          Image(image: AssetImage("assets/images/logo.png")),
          SpaceWidget(
            height: 246,
          ),
          Image(image: AssetImage("assets/images/HOUSE.png"))
        ],
      ),
    );
  }
}
