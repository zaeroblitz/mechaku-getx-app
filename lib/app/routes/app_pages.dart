import 'package:get/get.dart';

import 'package:mechaku_getx/app/modules/home/bindings/home_binding.dart';
import 'package:mechaku_getx/app/modules/home/views/home_view.dart';
import 'package:mechaku_getx/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:mechaku_getx/app/modules/sign_in/views/sign_in_view.dart';
import 'package:mechaku_getx/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:mechaku_getx/app/modules/sign_up/views/sign_up_view.dart';
import 'package:mechaku_getx/app/modules/splash/bindings/splash_binding.dart';
import 'package:mechaku_getx/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
