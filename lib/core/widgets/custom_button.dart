import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.09,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: const MaterialStatePropertyAll(
            kSecondaryColor,
          ),
        ),
        child: Text(
          text,
          style: Styles.style24.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
