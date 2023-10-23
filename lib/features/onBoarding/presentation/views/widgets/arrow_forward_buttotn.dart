import 'package:flutter/material.dart';

class ArrowForwardButton extends StatelessWidget {
  const ArrowForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 150,
      child: FloatingActionButton(
        onPressed: () {},
        mini: false,
        backgroundColor: const Color.fromARGB(255, 35, 47, 67),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
