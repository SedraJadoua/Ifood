import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuildDot extends StatelessWidget {
   BuildDot({
    super.key,
    required this.currentIndex,
    required this.index,
  });
  int currentIndex = 0;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 16,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: currentIndex == index
            ? const Color.fromARGB(255, 6, 18, 28)
            : Colors.grey,
      ),
    );
  }
}
