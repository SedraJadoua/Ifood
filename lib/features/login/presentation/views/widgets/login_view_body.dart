import 'package:flutter/material.dart';
import 'package:foody_app/core/utils/styles.dart';

import '../../../../../constants.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.09,
                vertical: MediaQuery.of(context).size.height * 0.09),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Guest!',
                  style: Styles.style20,
                ),
                Row(
                  children: [
                    Text(
                      'Welcome to ',
                      style: Styles.style20,
                    ),
                    Text(
                      'IFood',
                      style: Styles.style20.copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
                Text(
                  'Before Continue, Please Sing In First.',
                  style: Styles.style16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
