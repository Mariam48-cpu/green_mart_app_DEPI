import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({
    super.key,
    required this.path,
    this.color,
    this.height,
    this.width,
  });

  final String path;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: height ?? 24,
      width: width ?? 24,
      colorFilter: (color != null)
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}
