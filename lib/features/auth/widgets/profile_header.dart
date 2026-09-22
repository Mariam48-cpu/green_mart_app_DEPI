import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Mariam Sanad',
                      style: TextStyles.title1.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(8),
                    const Icon(
                      Icons.edit,
                      size: 18,
                      color: AppColor.primaryColor,
                    ),
                  ],
                ),
                Gap(4),
                Text(
                  'mariamsanad@gmail.com',
                  style: TextStyles.body.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
