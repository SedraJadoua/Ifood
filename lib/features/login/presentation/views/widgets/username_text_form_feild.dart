import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../constants.dart';

class EmailUsernameTextFormFeild extends StatelessWidget {
  const EmailUsernameTextFormFeild(
      {super.key});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'E-mail / Username',
        labelStyle: Styles.style16.copyWith(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kSecondaryColor),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.grey,
      maxLines: 1,
    );
  }
}
