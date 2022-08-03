import 'response_model.dart';
import 'user_model.dart';

abstract class Auth {
  Future<SignInRespnseModel> login(User? user);
  Future<SignUpReponseModel> signUp(User? user);
}

class AuthRepository implements Auth {
  @override
  Future<SignInRespnseModel> login(User? user) async {
    try {
      await Future.delayed(Duration(seconds: 2));

      if (user!.email!.isEmpty || user.login!.isEmpty) {
        throw Exception("Login qilishda xatolik bor");
      }

      return SignInRespnseModel(message: "success", code: 200);
    } catch (e) {
      print('Xatolik:::$e');
    }
    return SignInRespnseModel.fromJson({});
  }

  @override
  Future<SignUpReponseModel> signUp(User? user) async {
    try {
      await Future.delayed(Duration(seconds: 4));

      if (user!.email!.isEmpty || user.login!.isEmpty) {
        throw Exception("Royxatdan otishda xatolik bor");
      }

      return SignUpReponseModel(message: "success", code: 200);
    } catch (e) {
      print('Xatolik:::$e');
    }
    return SignUpReponseModel.fromJson({});
  }
}
