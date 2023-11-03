import 'package:foody_app/features/login/presentation/data/models/login_model/login_model.dart';
import 'package:foody_app/features/login/presentation/data/repos/login_repo.dart';
import 'package:foody_app/helper/api.dart';
import 'package:http/http.dart' as http;

class LoginRepoImpl extends LoginRepo {
 

  @override
  Future<LoginModel> postLoginData({ required String info,required String password}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'http://127.0.0.1:8000/api/auth/login', body: {
      'info': info,
      'password': password,
    });
    return LoginModel.fromJson(data);
  }
}
