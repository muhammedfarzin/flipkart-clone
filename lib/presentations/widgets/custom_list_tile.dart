import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flipkart/presentations/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
  });

  final String icon;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            CustomIcon(
              icon: icon,
              scale: 20,
            ),
            Constants.width15,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Constants.height5,
                  subtitle == null
                      ? const SizedBox()
                      : Text(
                          subtitle!,
                          style: const TextStyle(
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
    );
  }
}
