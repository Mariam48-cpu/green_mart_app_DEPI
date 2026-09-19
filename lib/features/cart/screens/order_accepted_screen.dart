import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/main/main_screen.dart';
class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            // أيقونة النجاح الكبيرة والديكور
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Icon(
                    Icons.check_circle,
                    size: 90,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
            ),
            const Gap(40),
            Text(
              'Your Order has been\naccepted',
              textAlign: TextAlign.center,
              style: TextStyles.headline1.copyWith(fontSize: 26),
            ),
            const Gap(15),
            Text(
              'Your items has been placed and is on\nit’s way to being processed',
              textAlign: TextAlign.center,
              style: TextStyles.body.copyWith(color: AppColor.greyColor),
            ),
            const Spacer(),
            MainButton(
              text: 'Go To Home',
              onPressed: () {
                // الرجوع للرئيسية وتصفير الـ Stack بالكامل
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const MainScreen()),
                  (route) => false,
                );
              },
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}