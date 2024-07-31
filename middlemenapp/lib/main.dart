import 'dart:async';
import 'package:flutter/material.dart';
import 'package:middlemenmodified/pages/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? isSeen = prefs.getInt('onboard');
  runApp(MyApp(isSeen: isSeen));
}

class MyApp extends StatelessWidget {
  final int? isSeen;
  const MyApp({super.key, this.isSeen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(isSeen: isSeen),
      // routes: {
      //   '/' : (context) => const SplashScreen(),
      //   'home'  : (context) => const HomeScreen(),

      // },
    );
  }
}
