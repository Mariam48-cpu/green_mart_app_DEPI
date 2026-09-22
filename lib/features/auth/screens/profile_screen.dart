import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/data/profile_model.dart';
import 'package:green_mart_app/features/auth/widgets/profile_header.dart';
import 'package:green_mart_app/features/auth/widgets/profile_list_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileModel> accountItems = [
      ProfileModel(
        icon: Icons.shopping_bag_outlined,
        title: 'Orders',
        onTap: () {},
      ),
      ProfileModel(
        icon: Icons.badge_outlined,
        title: 'My Details',
        onTap: () {},
      ),
      ProfileModel(
        icon: Icons.location_on_outlined,
        title: 'Delivery Address',
        onTap: () {},
      ),
      ProfileModel(
        icon: Icons.payment_outlined,
        title: 'Payment Methods',
        onTap: () {},
      ),
      ProfileModel(
        icon: Icons.local_offer_outlined,
        title: 'Promo Cord',
        onTap: () {},
      ),
      ProfileModel(
        icon: Icons.notifications_none,
        title: 'Notifications',
        onTap: () {},
      ),
      ProfileModel(icon: Icons.help_outline, title: 'Help', onTap: () {}),
      ProfileModel(icon: Icons.info_outline, title: 'About', onTap: () {}),
    ];

    return Scaffold(
      body: Column(
        children: [
          Gap(50),
          const ProfileHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: accountItems.length,
              itemBuilder: (context, index) {
                final item = accountItems[index];
                return Column(
                  children: [
                    const Divider(
                      thickness: 1,
                      height: 1,
                      color: AppColor.textFieldColor,
                    ),
                    ProfileListWidget(
                      icon: item.icon,
                      title: item.title,
                      onTap: item.onTap,
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: MainButton(
              text: ' Log Out',
              onPressed: () {},
              color: AppColor.textFieldColor,
              textColor: AppColor.primaryColor,
              icon: Icons.logout_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
