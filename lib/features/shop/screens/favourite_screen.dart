import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/function/navigation.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/shop/data/dummy_data.dart';
import 'package:green_mart_app/features/shop/data/product_model.dart';
import 'package:green_mart_app/features/shop/screens/product_details_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final List<ProductModel> favouriteProducts = allProducts
        .where((product) => product.isFavourite)
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Favourite',
          style: TextStyles.title2.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Divider(color: AppColor.borderColor, height: 1),
            Expanded(
              child: favouriteProducts.isEmpty
                  ? const Center(
                      child: Text(
                        'No favourite products yet',
                        style: TextStyle(color: AppColor.greyColor),
                      ),
                    )
                  : ListView.separated(
                      itemCount: favouriteProducts.length,
                      separatorBuilder: (context, index) =>
                          const Divider(color: AppColor.borderColor, height: 1),
                      itemBuilder: (context, index) {
                        final product = favouriteProducts[index];
                        return ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          leading: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.network(
                              product.image,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                    Icons.image_not_supported_outlined,
                                    color: AppColor.greyColor,
                                  ),
                            ),
                          ),
                          title: Text(
                            product.title,
                            style: TextStyles.subtitle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              '${product.quantity % 1 == 0 ? product.quantity.toInt() : product.quantity}${product.unit}, Price',
                              style: TextStyles.caption2.copyWith(
                                color: AppColor.greyColor,
                              ),
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '\$${product.price.toStringAsFixed(2)}',
                                style: TextStyles.subtitle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Gap(12),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: AppColor.blackColor,
                              ),
                            ],
                          ),
                          onTap: () {
                            pushTo(
                              context,
                              ProductDetailsScreen(product: product),
                            );
                            setState(() {});
                          },
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MainButton(text: 'Add All To Cart', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
