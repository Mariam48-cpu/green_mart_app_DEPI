import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onDecrease,
    required this.onIncrease,
  });

  final int quantity;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _QuantityButton(icon: Icons.remove, onTap: onDecrease),

        Gap(15),

        Text(
          quantity.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),

        Gap(15),

        _QuantityButton(icon: Icons.add, onTap: onIncrease),
      ],
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon, color: AppColor.primaryColor, size: 22),
    );
  }
}
