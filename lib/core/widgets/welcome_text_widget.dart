import 'package:flutter/material.dart';

import '../utils/styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: Styles.style24,
        ),
        Text(
          text2,
          style: Styles.style24,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          text3,
          style: Styles.style20.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
