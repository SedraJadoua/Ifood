import 'package:foody_app/features/login/presentation/data/models/login_model/login_model.dart';

abstract class LoginRepo {
  Future<LoginModel> postLoginData({
    required String info,
    required String password,
  });
}
