import 'package:flutter/material.dart';
import 'package:foody_app/constants.dart';

import '../../../../../core/utils/styles.dart';

class NameTextFormFeild extends StatelessWidget {
  const NameTextFormFeild({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        cursorColor: Colors.grey,
        keyboardType: TextInputType.text,
        maxLines: 1,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: Styles.style16.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.normal,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: kSecondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
