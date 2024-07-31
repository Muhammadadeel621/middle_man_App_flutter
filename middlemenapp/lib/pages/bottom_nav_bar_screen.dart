import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/group.dart';
import 'package:middlemenmodified/pages/home_Screen.dart';
import 'package:middlemenmodified/pages/middleman_Screen.dart';
import 'package:middlemenmodified/pages/person.dart';
// import 'package:middlemenmodified/pages/profile.dart';
import 'package:middlemenmodified/pages/settings.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  var pages = const [
    HomeScreen(),
    PersonScreen(),
    GroupScreen(),
    MIddlemanScreen(),
    // ProfileScreen(),
    SettingsScreen()
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColorgetstart,
      bottomNavigationBar: CurvedNavigationBar(
        color: CustomColors.bgColor,
        backgroundColor: CustomColors.whiteColor,
        animationCurve: Curves.easeOut,
        animationDuration: const Duration(milliseconds: 500),
        // backgroundColor: Colors.blue,
        items: const <Widget>[
          Icon(
            Icons.home_sharp,
            size: 25,
            color: CustomColors.whiteColor,
          ),
          Icon(
            Icons.person_add_alt_sharp,
            size: 25,
            color: CustomColors.whiteColor,
          ),
          Icon(
            Icons.group,
            size: 25,
            color: CustomColors.whiteColor,
          ),
          Icon(
            Icons.groups,
            size: 25,
            color: CustomColors.whiteColor,
          ),
          Icon(
            Icons.account_circle_outlined,
            size: 25,
            color: CustomColors.whiteColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
          //Handle button tap
        },
      ),
      body: pages[selectedindex],
    );
  }
}
