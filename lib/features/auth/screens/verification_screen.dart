import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/constant/app_design.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/screens/login_screen.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool isResendClicked = false;

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
                  Gap(40),
                  Text('Enter verification code', style: TextStyles.headline2),
                  Gap(16),
                  Text(
                    'We have sent SMS to: 01XXXXXXXXXX ',
                    style: TextStyles.body.copyWith(color: AppColor.greyColor),
                  ),
                  Gap(40),
                  Pinput(length: 6, keyboardType: TextInputType.number),
                  Gap(40),
                  Align(
                    alignment: Alignment.centerRight,

                    child: Text(
                      "Change Phone Number",
                      style: TextStyles.body.copyWith(
                        color: AppColor.greyColor,
                      ),
                    ),
                  ),
                  Gap(20),
                  MainButton(
                    text: 'Confirm ',
                    onPressed: () {
                      pushTo(context, LoginScreen());
                    },
                  ),
                  Gap(20),
                  Align(
                    alignment: .topCenter,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isResendClicked = true;
                        });
                      },
                      child: Text(
                        isResendClicked
                            ? "Resend confirmation code (1:23)"
                            : "Resend OTP",
                        style: TextStyles.body.copyWith(
                          color: isResendClicked
                              ? AppColor.greyColor
                              : AppColor.orangeColor,
                        ),
                      ),
                    ),
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
