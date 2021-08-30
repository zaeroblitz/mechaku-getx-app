import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mechaku_getx/app/routes/app_pages.dart';
import 'package:mechaku_getx/shared/theme.dart';
import 'package:mechaku_getx/widgets/widgets.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
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
          'Create \nAccount',
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
              // Full Name
              CustomTextField(
                label: 'Full Name',
                hintText: 'Your Full Name',
                prefixIconUrl: 'assets/fullname_icon.png',
                controller: controller.fullnameController,
              ),

              // Username
              CustomTextField(
                label: 'Username',
                hintText: 'Your Username',
                prefixIconUrl: 'assets/username_icon.png',
                controller: controller.usernameController,
              ),

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

              // Retype Password
              CustomTextField(
                isPassword: true,
                label: 'Retype Password',
                hintText: 'Your Password',
                prefixIconUrl: 'assets/password_icon.png',
                controller: controller.retypePasswordController,
              ),
            ],
          ),
        ),
      );
    }

    Widget _signUpButton() {
      return CustomButton(text: 'Sign Up');
    }

    Widget _signIn() {
      return Container(
        margin: EdgeInsets.only(top: 100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: regularTextStyle.copyWith(fontSize: 12),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SIGN_IN);
              },
              child: Text(
                'Sign In',
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
                _signUpButton(),
                _signIn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
