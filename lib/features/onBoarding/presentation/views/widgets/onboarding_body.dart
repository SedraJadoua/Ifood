import 'package:flutter/material.dart';

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
          print(index);
        });
      },
      itemBuilder: (context, index) => Column(
        children: [
          Image.asset(photo[index]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        photo.length, (index) => buildDot(index, context))),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
                  child: Text(
                    text[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          if (currentIndex + 1 < photo.length)
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.arrow_forward_ios),
                    
                    ),
              ],
            ),
          if (currentIndex == 2)
            SizedBox(
                width: 200,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get Started'),
                ))
        ],
      ),
    );
  }
}

Widget buildDot(int index, BuildContext context) {
  return Container(
    height: 18,
    width: 16,
    margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 11),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(60),
      color: currentIndex == index
          ? const Color.fromARGB(255, 6, 18, 28)
          : Colors.grey,
    ),
  );
}
