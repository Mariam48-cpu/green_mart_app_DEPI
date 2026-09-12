import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/constant/app_images.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/custom_text_field.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
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
                  Text('Sign Up', style: TextStyles.headline2),
                  Gap(16),
                  Text(
                    'Enter your credentials to continue',
                    style: TextStyles.body.copyWith(color: AppColor.greyColor),
                  ),
                  Gap(40),
                  CustomTextField(title: 'Name', hintText: 'John Doe'),
                  Gap(10),
                  CustomTextField(
                    title: 'Email',
                    hintText: 'example@gmail.com',
                  ),
                  Gap(10),
                  CustomTextField(title: 'Password', hintText: '********'),

                  Gap(40),
                  MainButton(
                    text: 'Sign Up',
                    onPressed: () {
                      pushReplacement(context, LoginScreen());
                    },
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyles.caption1,
                      ),
                      TextButton(
                        onPressed: () {
                          pushReplacement(context, LoginScreen());
                        },
                        style: TextButton.styleFrom(
                          minimumSize: .zero,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                        ),
                        child: Text(
                          'Login',
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
