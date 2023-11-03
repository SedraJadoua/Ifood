import 'package:flutter/material.dart';

import 'package:foody_app/core/widgets/welcome_text_widget.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.09,
          right: MediaQuery.of(context).size.width * 0.09,
          top: MediaQuery.of(context).size.height * 0.06,
        ),
        child: Column(
          children: [
            const WelcomeTextWidget(
              text1: 'Type a verification Code ',
              text2: 'That we have sent ',
              text3: 'Enter your verification code below ',
            ),
            Image.asset('assets/images/verify_screen_photo.jpg')
          ],
        ),
      ),
    ));
  }
}
