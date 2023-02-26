import 'package:flutter/material.dart';

class GridViewCategoryItem extends StatelessWidget {
  const GridViewCategoryItem({
    super.key,
    required this.icon,
    required this.label,
    this.badgeValue,
    this.spacing = 5,
    this.iconScale,
    this.labelStyle,
    this.badgeColor,
    this.circleColor = Colors.blue,
    this.circleRadius = 35,
    this.imagePadding = 0,
  });

  final String icon;
  final String label;
  final double spacing;
  final String? badgeValue;
  final double? iconScale;
  final TextStyle? labelStyle;
  final Color? badgeColor;
  final Color circleColor;
  final double circleRadius;
  final double imagePadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: circleRadius,
              backgroundColor: circleColor,
              child: Padding(
                padding: EdgeInsets.all(imagePadding),
                child: Image.asset(
                  icon,
                  scale: iconScale ?? 7,
                ),
              ),
            ),

            // Badge
            badgeValue == null
                ? const SizedBox()
                : Positioned(
                    bottom: -3,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: badgeColor ??
                                Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 4,
                          ),
                          child: Text(
                            badgeValue!,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: labelStyle ??
              const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
        )
      ],
    );
  }
}
