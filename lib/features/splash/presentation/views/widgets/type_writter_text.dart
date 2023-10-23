import 'package:flutter/material.dart';
import 'package:foody_app/features/onBoarding/presentation/views/onboarding_view.dart';
import 'package:foody_app/features/splash/presentation/views/widgets/fading_text.dart';

class TypeWritterText extends StatefulWidget {
  const TypeWritterText({super.key});

  @override
  State<TypeWritterText> createState() => _TypeWritterTextState();
}

class _TypeWritterTextState extends State<TypeWritterText>
    with TickerProviderStateMixin {
  @override
  void initState() {
    writeText();
    initAnimation();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>const OnBoardingView(),));
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  final List<String> text = [
    'Indulge In',
    'Exquisite Foods',
    'Fast Food',
  ];
  int currentCharIndex = 0;
  int currentIndex = 0;
  late AnimationController animationController;
  late Animation<double> animated;

  void initAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 1,
        ));
    animated = Tween<double>(begin: 0.5, end: 1).animate(animationController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      });
    animationController.forward();
  }

  void writeText() {
    if (currentIndex + 1 >= text.length) {
      return;
    }

    if (currentCharIndex < text[currentIndex].length) {
      currentCharIndex++;
    } else {
      currentIndex = (currentIndex + 1) % text.length;
      currentCharIndex = 0;
    }

    setState(() {});
    Future.delayed(const Duration(milliseconds: 120), () {
      writeText();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: text[currentIndex] == 'Fast Food'
          ? FadingText(
              animated: animated,
            )
          : Text(
              text[currentIndex].substring(0, currentCharIndex),
              style: const TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
    );
  }
}
