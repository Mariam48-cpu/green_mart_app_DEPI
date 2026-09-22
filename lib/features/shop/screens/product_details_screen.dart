import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/constant/app_design.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/core/widgets/quantity_selector.dart';
import 'package:green_mart_app/features/shop/data/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColor.textFieldColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Hero(
                      tag: product.heroTag,
                      child: Image.network(product.image, fit: BoxFit.contain),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.ios_share_outlined, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: TextStyles.title2.copyWith(fontSize: 18),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              product.isFavourite = !product.isFavourite;
                            });
                          },
                          icon: Icon(
                            product.isFavourite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: product.isFavourite
                                ? AppColor.redColor
                                : AppColor.greyColor,
                          ),
                        ),
                      ],
                    ),
                    Gap(5),
                    Text(
                      '${product.quantity % 1 == 0 ? product.quantity.toInt() : product.quantity} ${product.unit}',
                      style: TextStyles.caption1.copyWith(
                        color: AppColor.greyColor,
                      ),
                    ),
                    Gap(18),
                    Row(
                      children: [
                        QuantitySelector(
                          quantity: quantity,
                          onDecrease: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          onIncrease: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                        const Spacer(),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: TextStyles.title2.copyWith(fontSize: 22),
                        ),
                      ],
                    ),
                    Gap(20),
                    const Divider(color: AppColor.borderColor),
                    ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      childrenPadding: EdgeInsets.only(
                        bottom: AppDesign.ContentPadding,
                      ),
                      title: Text(
                        'Product Detail',
                        style: TextStyles.caption1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      children: [
                        Text(
                          product.description,
                          style: TextStyles.caption2.copyWith(
                            color: AppColor.greyColor,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    const Divider(color: AppColor.borderColor),
                    ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      title: Text(
                        'Nutritions',
                        style: TextStyles.caption1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '100g',
                            style: TextStyles.caption2.copyWith(
                              color: AppColor.greyColor,
                            ),
                          ),
                          Gap(8),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                      children: [
                        ...product.nutrition.entries.map((entry) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              children: [
                                Text(entry.key, style: TextStyles.caption2),
                                const Spacer(),
                                Text(
                                  entry.value,
                                  style: TextStyles.caption2.copyWith(
                                    color: AppColor.greyColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                    const Divider(color: AppColor.borderColor),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        'Review',
                        style: TextStyles.caption1.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              size: 16,
                              color: AppColor.redColor,
                            ),
                          ),
                          Gap(8),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    Gap(10),
                    MainButton(
                      text: 'Add To Cart',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Product added to cart'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
