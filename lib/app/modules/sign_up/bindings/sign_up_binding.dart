import 'package:get/get.dart';
import 'package:mechaku_getx/app/controllers/auth_controller.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
