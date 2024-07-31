import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/login_Screen.dart';
import 'package:middlemenmodified/widgets/label_widget.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_form_field_Widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

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
              const LabelWidget(
                texttt: "Full Legal Name",
              ),
              const SpaceWidget(
                height: 8,
              ),
              const TextFormFieldWidget(
                hinttext: "Enter your name here",
                preicon: Icon(Icons.person_2_outlined),
                obscuretext: false,
                texttype: TextInputType.name,
              ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(
                texttt: "Email",
              ),
              const SpaceWidget(
                height: 8,
              ),
              const TextFormFieldWidget(
                hinttext: "Enter your email here",
                preicon: Icon(Icons.email_outlined),
                obscuretext: false,
                texttype: TextInputType.emailAddress,
              ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(
                texttt: "Password",
              ),
              const SpaceWidget(
                height: 8,
              ),
              const TextFormFieldWidget(
                hinttext: "Enter your password",
                preicon: Icon(Icons.lock_outlined),
                sufficon: Icon(Icons.visibility_off),
                obscuretext: false,
                texttype: TextInputType.name,
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
              const LabelWidget(
                texttt: "Phone Number",
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
                        Image(image: AssetImage('assets/images/flagimage.png')),
                        SpaceWidget(width: 2),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: CustomColors.arrowdownColor,
                        ),
                      ],
                    ),
                  ),
                  // const SpaceWidget(width: 2),
                  const Expanded(
                    child: TextFormFieldWidget(
                      hinttext: "Enter your phone number here",
                      obscuretext: false,
                      texttype: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(
                texttt: "Country",
              ),
              const SpaceWidget(
                height: 8,
              ),
              const TextFormFieldWidget(
                hinttext: "Enter your Country",
                sufficon: Icon(
                  Icons.keyboard_arrow_down,
                  color: CustomColors.arrowdownColor,
                  size: 20,
                ),
                obscuretext: false,
              ),

              // DropdownButtonFormField(items: [

              // ], onChanged: onChanged)

              // TextFormField(
              //   decoration: InputDecoration(
              //       hintText: "Enter your Country",
              //       fillColor: CustomColors.textformFeildColor,
              //       filled: true,
              //       isDense: true,
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //           borderSide: const BorderSide(
              //               color: CustomColors.textformFeildborColor)),
              //       hintStyle: const TextStyle(
              //           fontSize: 12,
              //           fontWeight: FontWeight.w300,
              //           fontFamily: "assets/fonts/Poppins-Medium.ttf"),
              //       suffixIcon: DropdownButton(
              //         onChanged: ,
              //         items: const [

              //         DropdownMenuItem(
              //           value: "Pakistan",
              //           child: Text("Pakistan"),
              //         ),
              //         DropdownMenuItem(
              //           value: "India",
              //           child: Text("India"),
              //         ),
              //         DropdownMenuItem(
              //           value: "Bangladesh",
              //           child: Text("Bangladesh"),
              //         ),
              //         DropdownMenuItem(
              //           value: "Austrlia",
              //           child: Text("Australia"),
              //         ),
              //         DropdownMenuItem(
              //           value: "Srilanka",
              //           child: Text("Srilanka"),
              //         ),
              //         DropdownMenuItem(
              //           value: "England",
              //           child: Text("England"),
              //         ),
              //         DropdownMenuItem(
              //           value: "Afghanistam",
              //           child: Text("Afghamistan"),
              //         ),
              //       ])),
              // ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(
                texttt: "Legal Identification Number",
              ),
              const SpaceWidget(
                height: 8,
              ),
              const TextFormFieldWidget(
                texttype: TextInputType.number,
                hinttext: "Enter your identification number",
                obscuretext: false,
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
