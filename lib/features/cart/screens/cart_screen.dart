import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/cart/widgets/checkout_bottom_sheet.dart';
import 'package:green_mart_app/features/cart/widgets/quantity_button.dart';
import 'package:green_mart_app/features/shop/data/dummy_data.dart';
import 'package:green_mart_app/features/shop/data/product_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<ProductModel> cartProducts = allProducts.take(4).toList();
  final Map<String, int> quantities = {};

  @override
  void initState() {
    super.initState();
    for (var product in cartProducts) {
      quantities[product.id] = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0.0;
    for (var product in cartProducts) {
      int qty = quantities[product.id] ?? 1;
      totalPrice += product.price * qty;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Cart', style: TextStyles.title2.copyWith(fontSize: 20)),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Divider(color: AppColor.borderColor, height: 1),
            Expanded(
              child: cartProducts.isEmpty
                  ? Center(
                      child: Text(
                        'Your cart is empty',
                        style: TextStyle(color: AppColor.greyColor),
                      ),
                    )
                  : ListView.separated(
                      itemCount: cartProducts.length,
                      separatorBuilder: (context, index) =>
                          Divider(color: AppColor.borderColor, height: 1),
                      itemBuilder: (context, index) {
                        final product = cartProducts[index];
                        final int currentQty = quantities[product.id] ?? 1;

                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(
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
                                  Icon(
                                    Icons.image_not_supported_outlined,
                                    color: AppColor.greyColor,
                                  ),
                            ),
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  product.title,
                                  style: TextStyles.subtitle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.close,
                                  size: 18,
                                  color: AppColor.greyColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    cartProducts.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(4),
                              Text(
                                '${product.quantity % 1 == 0 ? product.quantity.toInt() : product.quantity}${product.unit}, Price',
                                style: TextStyles.caption2.copyWith(
                                  color: AppColor.greyColor,
                                ),
                              ),
                              Gap(10),
                              Row(
                                children: [
                                  QuantityButton(
                                    icon: Icons.remove,
                                    onTap: () {
                                      setState(() {
                                        if (currentQty > 1) {
                                          quantities[product.id] =
                                              currentQty - 1;
                                        }
                                      });
                                    },
                                  ),
                                  Gap(15),
                                  Text(
                                    '$currentQty',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Gap(15),
                                  QuantityButton(
                                    icon: Icons.add,
                                    onTap: () {
                                      setState(() {
                                        quantities[product.id] = currentQty + 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Text(
                            '\$${(product.price * currentQty).toStringAsFixed(2)}',
                            style: TextStyles.subtitle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                height: 56,
                child: MainButton(
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) =>
                        CheckoutBottomSheet(totalPrice: totalPrice),
                    isScrollControlled: true,
                  ),
                  text:
                      'Go to Checkout        (\$${totalPrice.toStringAsFixed(2)})',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
