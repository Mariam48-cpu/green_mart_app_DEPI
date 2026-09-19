import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.title,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.readOnly = false,
    this.onTap,
  });

  final String? title;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final bool readOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w500),
          ),
          const Gap(8),
        ],
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          readOnly: readOnly,
          onTap: onTap,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.textFieldColor,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
