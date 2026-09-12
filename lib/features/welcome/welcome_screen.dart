import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/constant/app_images.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          Positioned(
            bottom: 60,
            right: 20,
            left: 20,
            child: Column(
              mainAxisSize: .min,
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColor.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
                Gap(10),
                Text(
                  'Welcome\nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyles.headline1.copyWith(
                    color: AppColor.whiteColor,
                    fontSize: 40,
                    height: 1.2,
                  ),
                ),
                Gap(10),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyles.caption1.copyWith(
                    color: AppColor.whiteColor,
                  ),
                ),
                Gap(20),
                MainButton(
                  onPressed: () {
                    pushReplacement(context, LoginScreen());
                  },
                  text: "Get Started",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
