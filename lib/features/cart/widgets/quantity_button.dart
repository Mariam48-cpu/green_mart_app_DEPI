import 'package:flutter/material.dart';
import 'package:green_mart_app/core/style/app_color.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({super.key, this.onTap, required this.icon});
  final Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.borderColor),
        ),
        child: Icon(icon, size: 16, color: AppColor.primaryColor),
      ),
    );
  }
}
