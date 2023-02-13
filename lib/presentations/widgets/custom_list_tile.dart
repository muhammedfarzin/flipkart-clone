import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flipkart/presentations/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.iconScale = 25,
    this.titleStyle,
    this.subtitleStyle,
  });

  final String icon;
  final String title;
  final String? subtitle;
  final double iconScale;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              CustomIcon(
                icon: icon,
                scale: iconScale,
              ),
              Constants.width15,
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      title,
                      style: titleStyle ??
                          const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                    ),
                    Constants.height5,

                    // Subtitle
                    subtitle == null
                        ? const SizedBox()
                        : Text(
                            subtitle!,
                            style: subtitleStyle ??
                                const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                          ),
                  ],
                ),
              ),

              // Arrow Icon
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
