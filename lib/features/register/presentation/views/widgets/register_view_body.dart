import 'package:flutter/material.dart';
import 'package:foody_app/constants.dart';
import 'package:foody_app/core/widgets/custom_button.dart';
import 'package:foody_app/core/widgets/password_text_form_feild.dart';
import 'package:foody_app/features/register/presentation/views/widgets/check_box_widget.dart';
import 'package:foody_app/features/register/presentation/views/widgets/name_text_form_feild.dart';
import 'package:foody_app/features/register/presentation/views/widgets/pick_avatar_widget.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/welcome_text_widget.dart';

// ignore: must_be_immutable
class RegisterViewBody extends StatelessWidget {
  RegisterViewBody({super.key});
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.09,
            right: MediaQuery.of(context).size.width * 0.09,
            top: MediaQuery.of(context).size.height * 0.06,
          ),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const WelcomeTextWidget(
                text1: "Don't have an Account",
                text2: 'Create Your Account',
                text3: 'it is quick and easy ',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const PickAvatar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  const NameTextFormFeild(labelText: 'First Name'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  const NameTextFormFeild(labelText: 'Last Name'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {},
                  // initialValue: PhoneNumber(isoCode: '963'),
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useEmoji: true,
                    trailingSpace: false,
                    setSelectorButtonAsPrefixIcon: true,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  inputDecoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: Styles.style16.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: kSecondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const PasswordTextFormFeild(
                labelText: 'Password',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const PasswordTextFormFeild(
                labelText: 'Confirm Password',
              ),
              Row(
                children: [
                  const CheckBoxWidget(),
                  Text(
                    'I agree to the',
                    style: Styles.style14.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Terms and Conditions',
                      style: Styles.style14.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomButton(onPressed: null, text: 'SIGN UP')
            ]),
          ),
        ),
      ),
    );
  }
}
