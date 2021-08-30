import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mechaku_getx/app/routes/app_pages.dart';

import '../../../../shared/theme.dart';
import '../../../../widgets/widgets.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget _logo() {
      return Container(
        width: 30,
        margin: EdgeInsets.only(bottom: 30),
        child: Image.asset(
          'assets/logo_min.png',
          width: 30,
        ),
      );
    }

    Widget _title() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'Hey, \nLogin Now',
          style: titleTextStyle,
        ),
      );
    }

    Widget _form() {
      return Container(
        margin: EdgeInsets.only(bottom: 22),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Email
              CustomTextField(
                label: 'Email Address',
                hintText: 'Your Email Address',
                prefixIconUrl: 'assets/email_icon.png',
                controller: controller.emailController,
              ),

              // Password
              CustomTextField(
                isPassword: true,
                label: 'Password',
                hintText: 'Your Password',
                prefixIconUrl: 'assets/password_icon.png',
                controller: controller.passwordController,
              ),
            ],
          ),
        ),
      );
    }

    Widget _signInButton() {
      return CustomButton(
        text: 'Sign In',
        onPressed: () {},
      );
    }

    Widget _signUp() {
      return Container(
        margin: EdgeInsets.only(top: 160),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: regularTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SIGN_UP);
              },
              child: Text(
                'Sign Up',
                style: orangeTextStyle.copyWith(
                  fontSize: 12,
                  color: orangeColor,
                  fontWeight: semiBold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _logo(),
                _title(),
                _form(),
                _signInButton(),
                _signUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
