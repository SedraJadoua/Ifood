import 'package:flutter/material.dart';
import 'package:foody_app/core/utils/assets.dart';
import 'package:foody_app/core/widgets/custom_button.dart';
import 'package:foody_app/core/widgets/text_button_widget.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/arrow_forward_buttotn.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/custom_container.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../login/presentation/views/login_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

int currentIndex = 0;

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    List<String> text = [
      'Fast delivery at your doorstep',
      'Pick your favourite food and drink',
      'Wait your order & enjoy it in home',
    ];
    return PageView.builder(
      controller: pageController,
      itemCount: AssetData.onBoardingPhotos.length,
      onPageChanged: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      itemBuilder: (context, index) => Column(
        children: [
          Image.asset(AssetData.onBoardingPhotos[index]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomContainer(index: index, text: text),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          if (currentIndex + 1 < AssetData.onBoardingPhotos.length)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: TextButtonWidget(
                    text: 'Skip',
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ));
                    },
                  ),
                ),
                const Spacer(),
                ArrowForwardButton(
                  pageController: pageController,
                )
              ],
            ),
          if (currentIndex == 2)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ));
                },
              ),
            )
        ],
      ),
    );
  }
}
