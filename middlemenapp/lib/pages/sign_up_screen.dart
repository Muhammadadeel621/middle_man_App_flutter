import 'package:flutter/material.dart';
import 'package:middlemenapp/constants/colors.dart';
import 'package:middlemenapp/pages/login_Screen.dart';
import 'package:middlemenapp/widgets/space_widget.dart';
import 'package:middlemenapp/widgets/text_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                height: 50,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    color: CustomColors.textformFeildborColor,
                    size: 30,
                  ),
                  SpaceWidget(
                    width: 50,
                  ),
                  Image(image: AssetImage("assets/images/logstr.png"))
                ],
              ),
              const SpaceWidget(
                height: 20,
              ),
              const TextWidget(
                textalign: TextAlign.center,
                text: "Create your Account",
                textcolor: CustomColors.bgColor,
                fontsize: 20,
                fontWeight: FontWeight.w400,
                fontfamily: "assets/fonts/Poppind-Medium.ttf",
              ),
              const TextWidget(
                textalign: TextAlign.center,
                text: "Let's set you up!",
                textcolor: CustomColors.bgColor,
                fontsize: 14,
                fontWeight: FontWeight.w300,
                fontfamily: "assets/fonts/Poppind-Light.ttf",
              ),
              const SpaceWidget(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // textalign: TextAlign.right,
                    text: "Full Legal Name",
                    textcolor: CustomColors.getstrwelcome,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    fontfamily: "assets/fonts/Poppins-Medium.ttf",
                  ),
                ],
              ),
              const SpaceWidget(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your name here",
                    fillColor: CustomColors.textformFeildColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: CustomColors.textformFeildborColor)),
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: "assets/fonts/Poppins-Medium.ttf"),
                    prefixIcon: const Icon(Icons.person_2_outlined)),
              ),
              const SpaceWidget(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // textalign: TextAlign.right,
                    text: "Email",
                    textcolor: CustomColors.getstrwelcome,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    fontfamily: "assets/fonts/Poppins-Medium.ttf",
                  ),
                ],
              ),
              const SpaceWidget(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your email here",
                    fillColor: CustomColors.textformFeildColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: CustomColors.textformFeildborColor)),
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: "assets/fonts/Poppins-Medium.ttf"),
                    prefixIcon: const Icon(Icons.email_outlined)),
              ),
              const SpaceWidget(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // textalign: TextAlign.right,
                    text: "Password",
                    textcolor: CustomColors.getstrwelcome,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    fontfamily: "assets/fonts/Poppins-Medium.ttf",
                  ),
                ],
              ),
              const SpaceWidget(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    fillColor: CustomColors.textformFeildColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: CustomColors.textformFeildborColor)),
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: "assets/fonts/Poppins-Medium.ttf"),
                    prefixIcon: const Icon(Icons.lock_outlined),
                    suffixIcon: const Icon(Icons.visibility_off)),
              ),
              const SpaceWidget(
                height: 10,
              ),
              const Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "*Must be at least 8 characters",
                    textcolor: CustomColors.loginpasscheck,
                    fontsize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SpaceWidget(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // textalign: TextAlign.right,
                    text: "Phone Number",
                    textcolor: CustomColors.getstrwelcome,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    fontfamily: "assets/fonts/Poppins-Medium.ttf",
                  ),
                ],
              ),
              const SpaceWidget(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    width: 73,
                    height: 35,
                    decoration: BoxDecoration(
                      color: CustomColors.textformFeildColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Row(
                      children: [
                        Image(image: AssetImage('assets/images/flag.png')),
                        SpaceWidget(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: CustomColors.arrowdownColor,
                        ),
                      ],
                    ),
                  ),
                  // const SpaceWidget(width: 2),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter your phone number here",
                        fillColor: CustomColors.textformFeildColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: CustomColors.textformFeildborColor,
                          ),
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: "assets/fonts/Poppins-Medium.ttf",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SpaceWidget(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // textalign: TextAlign.right,
                    text: "Country",
                    textcolor: CustomColors.getstrwelcome,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    fontfamily: "assets/fonts/Poppins-Medium.ttf",
                  ),
                ],
              ),
              const SpaceWidget(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your country",
                    fillColor: CustomColors.textformFeildColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: CustomColors.textformFeildborColor)),
                    hintStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: "assets/fonts/Poppins-Medium.ttf"),
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: CustomColors.arrowdownColor,
                    )),
              ),
              const SpaceWidget(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextWidget(
                    // textalign: TextAlign.right,
                    text: "Legal Identification nUMBER",
                    textcolor: CustomColors.getstrwelcome,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    fontfamily: "assets/fonts/Poppins-Medium.ttf",
                  ),
                ],
              ),
              const SpaceWidget(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your identification number",
                  fillColor: CustomColors.textformFeildColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: CustomColors.textformFeildborColor)),
                  hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: "assets/fonts/Poppins-Medium.ttf"),
                ),
              ),
              const SpaceWidget(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Container(
                  width: 345,
                  height: 48,
                  decoration: BoxDecoration(
                      color: CustomColors.bgColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: TextWidget(
                      text: "Sign Up",
                      textcolor: CustomColors.whiteColor,
                      fontsize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SpaceWidget(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextWidget(
                    text: "Already have an account?",
                    textcolor: CustomColors.loginpasscheck,
                    fontsize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SpaceWidget(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const TextWidget(
                      // textdecoration: TextDecoration.underline,
                      text: "LogIn",
                      textcolor: CustomColors.forgetpassColor,
                      fontsize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const SpaceWidget(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
