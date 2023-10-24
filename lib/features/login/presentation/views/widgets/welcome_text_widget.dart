import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello, Guest!',
          style: Styles.style20,
        ),
        Row(
          children: [
            const Text(
              '  Welcome to ',
              style: Styles.style20,
            ),
            Text(
              'IFood',
              style: Styles.style20.copyWith(color: kPrimaryColor),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          'Before Continue, Please Sing In First.',
          style: Styles.style16.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }
}
