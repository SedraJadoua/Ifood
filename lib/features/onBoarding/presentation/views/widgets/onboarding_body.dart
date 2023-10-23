import 'package:flutter/material.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/arrow_forward_buttotn.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/custom_container.dart';
import 'package:foody_app/features/onBoarding/presentation/views/widgets/get_started_button.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

int currentIndex = 0;

class _OnBoardingBodyState extends State<OnBoardingBody> {
  @override
  Widget build(BuildContext context) {
    List<String> photo = [
      'assets/images/onboarding1.jpg',
      'assets/images/onboarding2.jpg',
      'assets/images/onboarding3.jpg',
    ];
    List<String> text = [
      'Fast delivery at your doorstep',
      'Pick your favourite food and drink',
      'Wait your order & enjoy it in home',
    ];
    return PageView.builder(
      itemCount: photo.length,
      onPageChanged: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      itemBuilder: (context, index) => Column(
        children: [
          Image.asset(photo[index]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomContainer(photo: photo, index: index, text: text),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          if (currentIndex + 1 < photo.length)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const ArrowForwardButton()
              ],
            ),
          if (currentIndex == 2) const GetStartedButton()
        ],
      ),
    );
  }
}
