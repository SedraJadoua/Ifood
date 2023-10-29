import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChanged,
      onChanged: ((value) {
        isChanged = value!;
        setState(() {
          
        });
      }),
      activeColor: kSecondaryColor,
    );
  }
}
