import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchTextFormFeild extends StatelessWidget {
  const SearchTextFormFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.style14.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        labelText: 'Search For Food',
        labelStyle: Styles.style16.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
