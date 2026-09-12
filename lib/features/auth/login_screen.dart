import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/constant/app_images.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/custom_text_field.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
 const  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImages.carrotSvg),
                  ),
                   Gap(40),
                  Text('Login', style: TextStyles.headline2),
                   Gap(16),
                  Text(
                    'Enter your email and password',
                    style: TextStyles.body.copyWith(color: AppColor.greyColor),
                  ),
                   Gap(40),
                   CustomTextField(
                    title: 'Email',
                    hintText: 'example@gmail.com',
                  ),
                   Gap(10),
                   CustomTextField(
                    title: 'Password',
                    hintText: '********',
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.body.copyWith(
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  ),
                   Gap(20),
                  MainButton(
                    text: 'Login',
                    onPressed: () {
                      pushReplacement(context,  SignUpScreen());
                    },
                  ),
                   Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyles.caption1,
                      ),
                      TextButton(
                        onPressed: () {
                          pushReplacement(context,  SignUpScreen());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: .zero,
                          padding:  EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyles.caption1.copyWith(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
