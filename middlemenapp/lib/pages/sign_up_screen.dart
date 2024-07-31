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
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController identifiationController = TextEditingController();

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
              TextFormFieldWidget(
                controller: nameController,
                hinttext: "Enter your name here",
                preicon: const Icon(Icons.person_2_outlined),
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
              TextFormFieldWidget(
                controller: emailController,
                hinttext: "Enter your email here",
                preicon: const Icon(Icons.email_outlined),
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
              TextFormFieldWidget(
                controller: passController,
                hinttext: "Enter your password",
                preicon: const Icon(Icons.lock_outlined),
                sufficon: const Icon(Icons.visibility_off),
                obscuretext: true,
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
                  Expanded(
                    child: TextFormFieldWidget(
                      controller: phoneController,
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
              TextFormFieldWidget(
                controller: countryController,
                hinttext: "Enter your Country",
                sufficon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: CustomColors.arrowdownColor,
                  size: 20,
                ),
                obscuretext: false,
              ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(
                texttt: "Legal Identification Number",
              ),
              const SpaceWidget(
                height: 8,
              ),
              TextFormFieldWidget(
                controller: identifiationController,
                texttype: TextInputType.number,
                hinttext: "Enter your identification number",
                obscuretext: false,
              ),
              const SpaceWidget(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  if (nameController.text.isEmpty ||
                      passController.text.isEmpty ||
                      phoneController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      countryController.text.isEmpty ||
                      identifiationController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Fields are Required",
                            style: TextStyle(fontSize: 12),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Sign Up Done",
                            style: TextStyle(fontSize: 14),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Container(
                  width: 345,
                  height: 48,
                  decoration: BoxDecoration(
                    color: CustomColors.bgColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
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
