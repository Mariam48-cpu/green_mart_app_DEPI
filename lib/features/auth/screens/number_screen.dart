import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/constant/app_design.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/custom_text_field.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/screens/login_screen.dart';
import 'package:green_mart_app/features/auth/screens/verification_screen.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColor.blackColor),
          onPressed: () {
            pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(AppDesign.ContentPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter your mobile number', style: TextStyles.headline2),
                  Gap(16),
                  Text(
                    'We need to verify you. We will send you a one time verification code. ',
                    style: TextStyles.body.copyWith(color: AppColor.greyColor),
                  ),
                  Gap(40),
                  CustomTextField(hintText: '01xxxxxxxxxx'),
                  Gap(40),
                  MainButton(
                    text: 'Next',
                    onPressed: () {
                      pushTo(context, VerificationScreen());
                    },
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
