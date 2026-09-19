import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/widgets/custom_text_field.dart';
import 'package:green_mart_app/core/widgets/product_card.dart';
import 'package:green_mart_app/core/widgets/section_header.dart';
import 'package:green_mart_app/features/shop/data/category_model.dart';
import 'package:green_mart_app/features/shop/data/dummy_data.dart';
import 'package:green_mart_app/features/shop/screens/category_products_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final exclusiveProducts = fruitsAndVegetables;
    final bestSellingProducts = beverageProducts;

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Logo.svg',
                      width: 50,
                      height: 50,
                      colorFilter: ColorFilter.mode(
                        AppColor.primaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),

                Gap(25),
                CustomTextField(
                  hintText: 'Search Store',
                  prefixIcon: Icon(Icons.search),
                ),

                Gap(25),
                SectionHeader(title: 'Exclusive Offer'),

                Gap(15),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 235,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: exclusiveProducts.length,
              separatorBuilder: (error, index) => SizedBox(width: 12),
              itemBuilder: (error, index) {
                return ProductCard(product: exclusiveProducts[index]);
              },
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          sliver: SliverToBoxAdapter(
            child: SectionHeader(
              title: 'Best Selling',
              onSeeAll: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CategoryProductsScreen(category: categoriesList.first),
                  ),
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 15)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 235,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemCount: bestSellingProducts.length,
              separatorBuilder: (error, index) => SizedBox(width: 12),
              itemBuilder: (error, index) {
                return ProductCard(product: bestSellingProducts[index]);
              },
            ),
          ),
        ),

        SliverToBoxAdapter(child: SizedBox(height: 30)),
      ],
    );
  }
}
