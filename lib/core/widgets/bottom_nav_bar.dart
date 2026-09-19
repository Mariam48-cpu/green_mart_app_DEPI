import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constant/app_images.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/widgets/svg_icon_picture.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        color: AppColor.whiteColor,
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: SvgIconPicture(path: AppImages.shopSvg),
            activeIcon: SvgIconPicture(
              path: AppImages.shopSvg,
              color: AppColor.primaryColor,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgIconPicture(path: AppImages.exploreSvg),
            activeIcon: SvgIconPicture(
              path: AppImages.exploreSvg,
              color: AppColor.primaryColor,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgIconPicture(path: AppImages.cartSvg),
            activeIcon: SvgIconPicture(
              path: AppImages.cartSvg,
              color: AppColor.primaryColor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgIconPicture(path: AppImages.favSvg),
            activeIcon: SvgIconPicture(
              path: AppImages.favSvg,
              color: AppColor.primaryColor,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SvgIconPicture(path: AppImages.personSvg),
            activeIcon: SvgIconPicture(
              path: AppImages.personSvg,
              color: AppColor.primaryColor,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
