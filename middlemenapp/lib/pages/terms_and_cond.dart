import 'package:flutter/material.dart';
import 'package:middlemenmodified/constants/colors.dart';
import 'package:middlemenmodified/widgets/space_widget.dart';
import 'package:middlemenmodified/widgets/text_widget.dart';

class TermsCond extends StatelessWidget {
  const TermsCond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColorgetstart,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SpaceWidget(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                  const SpaceWidget(
                    width: 50,
                  ),
                  const TextWidget(
                    text: "Terms & Conditions",
                    textcolor: CustomColors.bgColor,
                    fontsize: 18,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
            const SpaceWidget(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextWidget(
                text:
                    '''L15.1 Thank you for visiting our Application Doctor 24×7 and enrolling as a member.
              
15.2 Your privacy is important to us. To better protect your privacy, we are providing this notice explaining our policy with regards to the information you share with us. This privacy policy related to the information we collect, online from Application, received through the email, by fax or telephone, or in person or in any other way and retain and use for the purpose of providing you services. If you do not agree to the terms in this Policy, we kindly ask you not to use these portals and/or sign the contract document.
              
15.3 In order to use the services of this Application, You are required to register yourself by verifying the authorised device. This Privacy Policy applies to your information that we collect and receive on and through Doctor 24×7; it does not apply to practices of businesses that we do not own or control or people we do not employ.
              
15.4 By using this Application, you agree to the terms of this Privacy Policy. ''',
                fontsize: 14,
                textcolor: CustomColors.bgColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
