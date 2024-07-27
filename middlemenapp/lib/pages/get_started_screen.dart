import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/on_boarding_screen.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColorgetstart,
      body: Column(
        children: [
          const Image(
            image: AssetImage("assets/images/getsrt.png"),
          ),
          const SpaceWidget(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/logstr.png"),
                ),
                const SpaceWidget(
                  height: 10,
                ),
                const TextWidget(
                  text: "Welcome to Middlemen 👋",
                  textcolor: CustomColors.getstrwelcome,
                  fontWeight: FontWeight.w400,
                  fontsize: 18,
                ),
                const SpaceWidget(
                  height: 20,
                ),
                const TextWidget(
                  textalign: TextAlign.center,
                  text:
                      "Explore diverse cuisines & order healthy delights - all with a few taps. Your flavorful adventure starts now!",
                  textcolor: CustomColors.getstrwelcome,
                  fontWeight: FontWeight.w400,
                  fontsize: 18,
                ),
                const SpaceWidget(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingScreen()));
                  },
                  child: Container(
                    height: 48,
                    width: 348,
                    decoration: BoxDecoration(
                        color: CustomColors.bgColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: TextWidget(
                      text: "Get started 🚀",
                      textcolor: CustomColors.whiteColor,
                      fontWeight: FontWeight.w400,
                      fontsize: 16,
                    )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
