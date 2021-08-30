import 'package:get/get.dart';
import 'package:mechaku_getx/models/models.dart';
import 'package:mechaku_getx/services/services.dart';

class AuthController extends GetxController {
  late UserModel user;

  void signUp({
    required String email,
    required String password,
    required String name,
    required String username,
  }) async {
    user = await AuthService().signUp(
      email: email,
      password: password,
      name: name,
      username: username,
    );
  }

  void signIn({
    required String email,
    required String password,
  }) async {
    user = await AuthService().signIn(email: email, password: password);
  }

  void signOut() async {
    await AuthService().signOut();
  }
}
