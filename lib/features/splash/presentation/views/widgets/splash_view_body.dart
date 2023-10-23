import 'package:flutter/material.dart';
import 'package:foody_app/features/splash/presentation/views/widgets/type_writter_text.dart';
// import 'package:lottie/lottie.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           TypeWritterText(),
          //  Lottie.network(
          //     'https://lottie.host/1d7efcff-54ae-4af4-8401-9fac541f94f9/CTT1ktm6gz.json'),
        ],
      ),
    );
  }
}
