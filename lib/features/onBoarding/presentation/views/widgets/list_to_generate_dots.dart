import 'package:flutter/material.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/build_dot.dart';

// ignore: must_be_immutable
class ListToGenerateDots extends StatelessWidget {
   ListToGenerateDots({super.key , required this.photo , required this.currentIndex});
  List<String> photo;
  int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        photo.length,
        (index) => BuildDot(
          currentIndex: currentIndex,
          index: index,
        ),
      ),
    );
  }
}
