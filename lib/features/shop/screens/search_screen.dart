import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/widgets/custom_text_field.dart';
import 'package:green_mart_app/core/widgets/product_card.dart';
import 'package:green_mart_app/features/shop/data/dummy_data.dart';
import 'package:green_mart_app/features/shop/data/product_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.query});
  final String query;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> searchResults = allProducts.where((product) {
      return product.title.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new, size: 20),
                ),
                Expanded(
                  child: CustomTextField(
                    hintText: 'Cola',
                    prefixIcon: const Icon(Icons.search),
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                  ),
                ),
              ],
            ),

            Gap(20),
            Expanded(
              child: GridView.builder(
                itemCount: searchResults.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.67,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: searchResults[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
