import 'package:flutter/material.dart';
import 'package:foody_app/core/widgets/text_button_widget.dart';
import 'package:foody_app/core/widgets/password_text_form_feild.dart';
import 'package:foody_app/features/login/presentation/data/models/login_model/login_model.dart';
import 'package:foody_app/features/login/presentation/data/repos/login_repo_imp.dart';
import 'package:foody_app/features/login/presentation/views/widgets/remember_me&forget_password.dart';
import 'package:foody_app/features/login/presentation/views/widgets/username_text_form_feild.dart';
import 'package:foody_app/features/login/presentation/views/widgets/welcome_text_widget.dart';

import '../../../../../core/widgets/custom_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.09,
                vertical: MediaQuery.of(context).size.height * 0.09),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeTextWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const EmailUsernameTextFormFeild(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const PasswordTextFormFeild(labelText: 'Password'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const RememberMeAndForgetPassword(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                CustomButton(
                  text: 'SIGN IN',
                  onPressed: ()async {
                    LoginRepoImpl re = LoginRepoImpl();
                    LoginModel data =  await re.postLoginData(
                        info: 'sedra14', password:'sld s dlfd f');
                    print(data);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextButtonWidget(
                  text: 'Tap here if you do not have an account',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
