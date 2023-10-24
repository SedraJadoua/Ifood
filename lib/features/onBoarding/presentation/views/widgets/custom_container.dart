import 'package:flutter/material.dart';
import 'package:foody_app/core/utils/assets.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/list_to_generate_dots.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/onboarding_body.dart';

import '../../../../../core/utils/styles.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.index,
    required this.text,
  });

  List<String> text;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListToGenerateDots(
            currentIndex: currentIndex,
            photo: AssetData.onBoardingPhotos,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Text(
              text[index],
              textAlign: TextAlign.center,
              style: Styles.style24,
            ),
          ),
        ],
      ),
    );
  }
}
