import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class PasswordTextFormFeild extends StatefulWidget {
  const PasswordTextFormFeild({super.key});

  @override
  State<PasswordTextFormFeild> createState() => _PasswordTextFormFeildState();
}

class _PasswordTextFormFeildState extends State<PasswordTextFormFeild> {
  bool _passwordInVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _passwordInVisible,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: Styles.style16.copyWith(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordInVisible = !_passwordInVisible;
            });
          },
          icon: Icon(
            _passwordInVisible ? Icons.visibility_off : Icons.visibility,
          ),
        ),
        suffixIconColor: Colors.grey,
      ),
      keyboardType: TextInputType.text,
      cursorColor: Colors.grey,
      maxLines: 1,
    );
  }
}
