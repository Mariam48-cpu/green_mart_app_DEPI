import 'package:flutter/material.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColor.primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor ?? AppColor.whiteColor),
            ],
            Text(
              text,
              style: TextStyles.subtitle.copyWith(
                color: textColor ?? AppColor.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
