import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mechaku_getx/shared/theme.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Image.asset(
          'assets/logo_full.png',
          width: 350,
        ),
      ),
    );
  }
}
