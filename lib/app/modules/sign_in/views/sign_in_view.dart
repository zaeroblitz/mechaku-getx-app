import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../shared/theme.dart';
import '../../../../widgets/widgets.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo
                  Container(
                    width: 30,
                    margin: EdgeInsets.only(bottom: 60),
                    child: Image.asset(
                      'assets/logo_min.png',
                      width: 30,
                    ),
                  ),

                  // Title Text
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Hey, \nLogin Now',
                      style: titleTextStyle,
                    ),
                  ),

                  // Form
                  Container(
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
                  ),

                  // SignIn Button
                  CustomButton(text: 'Sign In'),
                ],
              ),
              SizedBox(
                height: 140,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: regularTextStyle.copyWith(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {},
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
            ],
          ),
        ),
      ),
    ));
  }
}
