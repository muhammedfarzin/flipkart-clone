import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.color,
    this.scale = 25,
  });

  final String icon;
  final Color? color;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      color: color ?? Constants.customDeepBlue,
      scale: scale,
    );
  }
}
