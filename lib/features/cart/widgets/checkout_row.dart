import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';

class CheckoutRow extends StatelessWidget {
  const CheckoutRow({super.key, required this.title, required this.value, required this.icon});
  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Text(title, style: TextStyles.subtitle.copyWith(color: AppColor.greyColor, fontSize: 16)),
           Spacer(),
          Text(value, style: TextStyles.body.copyWith(fontWeight: FontWeight.w600)),
           Gap(8),
          Icon(icon, size: 18, color: AppColor.blackColor),
        ],
      ),
    );
  }
}

