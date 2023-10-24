import 'package:flutter/material.dart';
import 'package:foody_app/features/login/presentation/views/login_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.08,
      child: ElevatedButton(
        onPressed: () {
          //TODO : what type of naviagtor
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const LoginView(),
          ));
        },
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: const MaterialStatePropertyAll(
            kSecondaryColor,
          ),
        ),
        child: const Text('Get Started', style: Styles.style24,),
      ),
    );
  }
}
