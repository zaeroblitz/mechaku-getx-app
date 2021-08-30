import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class SignInController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController(text: '');
    passwordController = TextEditingController(text: '');
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
