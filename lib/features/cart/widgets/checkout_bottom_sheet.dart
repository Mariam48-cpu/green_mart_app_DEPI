import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/cart/screens/order_accepted_screen.dart';
import 'package:green_mart_app/features/cart/widgets/checkout_row.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key, required this.totalPrice});

  final double totalPrice;

  static void show(BuildContext context, double totalPrice) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => CheckoutBottomSheet(totalPrice: totalPrice),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Checkout', style: TextStyles.title1.copyWith(fontSize: 22)),
              Spacer(),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          Divider(color: AppColor.borderColor),
          Gap(15),
          CheckoutRow(
            title: 'Delivery',
            value: 'Select Method',
            icon: Icons.chevron_right,
          ),
          Divider(color: AppColor.borderColor),
          CheckoutRow(title: 'Pament', value: '💳', icon: Icons.chevron_right),
          Divider(color: AppColor.borderColor),
          CheckoutRow(
            title: 'Promo Code',
            value: 'Pick discount',
            icon: Icons.chevron_right,
          ),
          Divider(color: AppColor.borderColor),
          CheckoutRow(
            title: 'Total Cost',
            value: '\$${totalPrice.toStringAsFixed(2)}',
            icon: Icons.chevron_right,
          ),
          Gap(15),
          Text(
            'By placing an order you agree to our\nTerms And Conditions',
            style: TextStyles.caption2.copyWith(
              color: AppColor.greyColor,
              height: 1.4,
            ),
          ),
          Gap(20),
          MainButton(
            text: 'Place Order',
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => OrderAcceptedScreen()),
              );
            },
          ),
          Gap(20),
        ],
      ),
    );
  }
}
