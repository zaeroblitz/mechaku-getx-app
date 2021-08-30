import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController fullnameController;
  late TextEditingController passwordController;
  late TextEditingController retypePasswordController;

  @override
  void onInit() {
    emailController = TextEditingController(text: '');
    usernameController = TextEditingController(text: '');
    fullnameController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
    retypePasswordController = TextEditingController(text: '');
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    fullnameController.dispose();
    passwordController.dispose();
    retypePasswordController.dispose();
    super.dispose();
  }
}
