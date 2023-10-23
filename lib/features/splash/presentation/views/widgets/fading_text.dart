import 'package:flutter/material.dart';

class FadingText extends StatelessWidget {
  const FadingText({super.key , required this.animated});
 final Animation<double> animated;
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animated,
      child: const Text(
        'Fast Food',
        style: TextStyle(
          fontSize: 40,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
