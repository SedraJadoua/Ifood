import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.08,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: const MaterialStatePropertyAll(
              Color.fromARGB(255, 35, 47, 67),
            )),
        child: const Text(
          'Get Started',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
