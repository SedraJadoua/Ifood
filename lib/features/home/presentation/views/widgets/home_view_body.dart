import 'package:flutter/material.dart';
import 'package:foody_app/core/utils/styles.dart';
import 'package:foody_app/features/home/presentation/views/widgets/search_text_form_field.dart';
import 'package:foody_app/features/register/presentation/views/widgets/pick_avatar_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 34, 49),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'FOOD TAKE ',
                        style: Styles.style30,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        'Flavour Fusion',
                        style: Styles.style20.copyWith(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.11,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: const PickAvatar(),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const SearchTextFormFeild(),
            ],
          ),
        ),
      ),
    );
  }
}
