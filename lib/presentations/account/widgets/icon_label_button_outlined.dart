import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flipkart/presentations/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class IconLabelButtonOutlined extends StatelessWidget {
  const IconLabelButtonOutlined({
    super.key,
    required this.icon,
    required this.label,
  });

  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(5);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          borderRadius: borderRadius,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
            decoration: BoxDecoration(
              border: Constants.outlinedBorder2,
              borderRadius: borderRadius,
            ),
            child: Row(
              children: [
                CustomIcon(
                  icon: icon,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
