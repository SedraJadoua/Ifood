import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArrowForwardButton extends StatelessWidget {
  ArrowForwardButton(
      {super.key, required this.pageController});
  
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 150,
      child: FloatingActionButton(
        onPressed: () {
          pageController.nextPage
          (
              duration: const Duration(milliseconds: 1),
              curve: Curves.ease);
        },
        backgroundColor: const Color.fromARGB(255, 35, 47, 67),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
