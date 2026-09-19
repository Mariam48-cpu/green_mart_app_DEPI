import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constant/app_design.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/product_card.dart';
import 'package:green_mart_app/features/shop/data/category_model.dart';
import 'package:green_mart_app/features/shop/data/product_model.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final products = getProductsByCategory(category.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name,
          style: TextStyles.subtitle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.tune, size: 20)),
        ],
      ),

      body: GridView.builder(
              padding: EdgeInsets.all(AppDesign.ContentPadding),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 12,
                childAspectRatio: .67,
              ),
              itemBuilder: (context, index) {
                final ProductModel product = products[index];
                return ProductCard(product: product);
              },
            ),
    );
  }
}
