import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/custom_text_field.dart';
import 'package:green_mart_app/features/shop/data/category_model.dart';
import 'package:green_mart_app/features/shop/screens/category_products_screen.dart';
import 'package:green_mart_app/features/shop/widgets/category_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Find Products', style: TextStyles.title2),

            Gap(20),
            CustomTextField(
              hintText: 'Search Store',
              prefixIcon: Icon(Icons.search),
            ),
            Gap(20),
            Expanded(
              child: GridView.builder(
                itemCount: categoriesList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.05,
                ),
                itemBuilder: (context, index) {
                  final category = categoriesList[index];

                  return CategoryCard(
                    category: category,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CategoryProductsScreen(category: category),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
