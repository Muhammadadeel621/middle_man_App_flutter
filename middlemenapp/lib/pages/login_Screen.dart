import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/pages/bottom_nav_bar_screen.dart';
import 'package:middlemenmodified/pages/sign_up_screen.dart';
import 'package:middlemenmodified/widgets/label_widget.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_form_field_Widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                text: "Sign in your Account",
                textcolor: CustomColors.bgColor,
                fontsize: 20,
                fontWeight: FontWeight.w400,
                fontfamily: "assets/fonts/Poppind-Medium.ttf",
              ),
              const TextWidget(
                textalign: TextAlign.center,
                text: "Welcome back we miss you!",
                textcolor: CustomColors.bgColor,
                fontsize: 14,
                fontWeight: FontWeight.w300,
                fontfamily: "assets/fonts/Poppind-Light.ttf",
              ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(texttt: "Email"),
              const SpaceWidget(
                height: 8,
              ),
              TextFormFieldWidget(
                controller: emailController,
                hinttext: "Enter your email here",
                preicon: const Icon(Icons.email_outlined),
                obscuretext: false,
              ),
              const SpaceWidget(
                height: 15,
              ),
              const LabelWidget(texttt: "Password"),
              const SpaceWidget(
                height: 8,
              ),
              TextFormFieldWidget(
                controller: passwordController,
                hinttext: "Enter your password",
                preicon: const Icon(Icons.lock_outlined),
                sufficon: const Icon(Icons.visibility_off),
                obscuretext: true,
              ),
              const SpaceWidget(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: "*Must be at least 8 characters",
                    textcolor: CustomColors.loginpasscheck,
                    fontsize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(
                    textdecoration: TextDecoration.underline,
                    text: "Forget Password?",
                    textcolor: CustomColors.forgetpassColor,
                    fontsize: 14,
                    fontWeight: FontWeight.w300,
                  )
                ],
              ),
              const SpaceWidget(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon(Icons.check_box_outline_blank),
                  Transform.translate(
                    offset: Offset(-10, 0),
                    child: Checkbox(
                        value: isChecked,
                        checkColor: Colors.white,
                        fillColor:
                            MaterialStateProperty.all(CustomColors.bgColor),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  const SpaceWidget(
                    width: 10,
                  ),
                  Transform.translate(
                    offset: const Offset(-25, 0),
                    child: const TextWidget(
                      text: "Remember me on this device",
                      textcolor: CustomColors.forgetpassColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              const SpaceWidget(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (passwordController.text.isEmpty ||
                      emailController.text.isEmpty) {
                    final snackBar = SnackBar(
                      /// need to set following properties for best effect of awesome_snackbar_content
                      elevation: 0,
                      // dismissDirection: DismissDirection.up,
                      // showCloseIcon: false,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.white12,
                      content: AwesomeSnackbarContent(
                        title: 'Error Message!',
                        message: 'Credentials doesn\'t found',

                        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                        // contentType: ContentType.failure,
                        contentType: ContentType.failure,
                      ),
                    );
                    ScaffoldMessenger.of(context)
                      ..showSnackBar(snackBar); // for showing snackbar
                    // ScaffoldMessenger.of(context)..hideCurrentSnackBar();       // for hiding snackbar
                    // ..hideCurrentSnackBar()
                    // ..showSnackBar(snackBar);

                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       title: const Text(
                    //           textAlign: TextAlign.center,
                    //           "Invalid Credentials",
                    //           style: TextStyle(
                    //               fontSize: 14, color: CustomColors.bgColor)),
                    //       actions: [
                    //         TextButton(
                    //             onPressed: () {
                    //               Navigator.pop(context);
                    //             },
                    //             child: const Text("OK"))
                    //       ],
                    //     );
                    //   },
                    // );
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBarWidget()));
                  }
                  // print("The email entered is :  $emailController");
                  // print("The Password entered is :  $passwordController");
                },
                child: Container(
                  width: 345,
                  height: 48,
                  decoration: BoxDecoration(
                      color: CustomColors.bgColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: TextWidget(
                      text: "Sign in",
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
                    text: "I'm a new user",
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
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const TextWidget(
                      // textdecoration: TextDecoration.underline,
                      text: "SignUp?",
                      textcolor: CustomColors.forgetpassColor,
                      fontsize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
