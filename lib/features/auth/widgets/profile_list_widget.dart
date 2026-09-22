import 'package:flutter/material.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: AppColor.blackColor, size: 30),
        title: Text(
          title,
          style: TextStyles.subtitle.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 25,
          color: AppColor.blackColor,
        ),
      ),
    );
  }
}
