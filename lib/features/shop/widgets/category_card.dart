import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/features/shop/data/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.category, required this.onTap});

  final CategoryModel category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColor.textFieldColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColor.borderColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                category.image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.category_outlined,
                    size: 55,
                    color: AppColor.primaryColor,
                  );
                },
              ),
            ),
            Gap(8),
            Text(
              category.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyles.caption1.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
