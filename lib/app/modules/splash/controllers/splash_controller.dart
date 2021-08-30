import 'dart:async';

import 'package:get/get.dart';
import 'package:mechaku_getx/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(
      Duration(seconds: 3),
      () => Get.offNamed(Routes.SIGN_IN),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
