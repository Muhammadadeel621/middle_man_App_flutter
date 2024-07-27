import 'package:flutter/material.dart';
import 'package:middlemenapp/constants/colors.dart';
import 'package:middlemenapp/pages/login_Screen.dart';
import 'package:middlemenapp/widgets/space_widget.dart';
import 'package:middlemenapp/widgets/text_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();
  void onNextPressed() {
    if (_controller.page == OnBoardingView.length - 1) {
      // Navigate to home screen
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.bgColorgetstart,
        body: PageView.builder(
            controller: _controller,
            itemCount: OnBoardingView.length,
            itemBuilder: (context, index) {
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SpaceWidget(
                    height: 40,
                  ),

                  OnBoardingView[index].image,
                  const SpaceWidget(
                    height: 15,
                  ),
                  // Text(OnBoardingView[index].heading.toString()),
                  TextWidget(
                    text: OnBoardingView[index].heading.toString(),
                    textcolor: CustomColors.bgColor,
                    fontWeight: FontWeight.w600,
                    fontsize: 32,
                  ),
                  const SpaceWidget(
                    height: 30,
                  ),
                  Container(
                    height: 150,
                    width: 400,
                    child: TextWidget(
                      textalign: TextAlign.center,
                      // textalign: TextAlign.left,
                      text: OnBoardingView[index].descrip.toString(),
                      textcolor: CustomColors.getstrwelcome,
                      // fontWeight: FontWeight.w400,
                      fontfamily: "assets/fonts/Poppins-Regular.ttf",
                      fontsize: 18,
                    ),
                  ),
                  const SpaceWidget(
                    height: 50,
                  ),
                  InkWell(
                    onTap: onNextPressed,
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          color: CustomColors.bgColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: CustomColors.whiteColor,
                        size: 25,
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}

class onBoard {
  Image image;
  String heading;
  String descrip;
  // InkWell cont;

  onBoard({
    required this.image,
    required this.heading,
    required this.descrip,
    // required this.cont,
  });
}

List<onBoard> OnBoardingView = [
  onBoard(
      image: const Image(image: AssetImage("assets/images/onboard1.png")),
      heading: "Onboarding 01",
      descrip:
          "Dive into an extensive cosmos \nof exquisite taste experiences,\nall within the cozy confines of\nyour own home."),
  onBoard(
      image: const Image(image: AssetImage("assets/images/onboard2.png")),
      heading: "Onboarding 02",
      descrip:
          "With ease, choose nutritious\nand delectable choices that\nseamlessly integrate into your\ndaily routine and lifestyle."),
  onBoard(
      image: const Image(image: AssetImage("assets/images/onboard3.png")),
      heading: "Onboarding 03",
      descrip:
          "Experience the ultimate\nconvenience with our fast,\nfresh, and convenient food\ndelivery service, delivered right\nto your doorstep.")
];
