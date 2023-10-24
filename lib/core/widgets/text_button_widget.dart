import 'package:flutter/material.dart';
import 'package:foody_app/features/login/presentation/views/login_view.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.style16.copyWith(
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
