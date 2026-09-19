import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SvgIconPicture extends StatelessWidget {
  const SvgIconPicture({super.key, this.color, required this.path});

  final Color? color;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
