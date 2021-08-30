import 'package:get/get.dart';
import 'package:mechaku_getx/app/controllers/auth_controller.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
  }
}
