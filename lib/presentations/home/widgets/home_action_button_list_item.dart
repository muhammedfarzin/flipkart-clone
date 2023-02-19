import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flutter/material.dart';

class HomeActionButtonListItem extends StatelessWidget {
  const HomeActionButtonListItem({
    Key? key,
    required this.icon,
    required this.label,
    this.badgeValue,
    this.iconScale = 15,
    this.spacing = 10,
  }) : super(key: key);

  final String icon;
  final String label;
  final String? badgeValue;
  final double iconScale;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 22.0,
        right: 6.5,
        bottom: 15.0,
        left: 6.5,
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Button Image
              CircleAvatar(
                backgroundColor: Constants.customLightBlueShade,
                radius: 30,
                child: Image.asset(
                  icon,
                  scale: iconScale,
                ),
              ),

              // Badge
              badgeValue == null
                  ? const SizedBox()
                  : Positioned(
                      bottom: -8,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Constants.customGreen,
                              borderRadius: BorderRadius.circular(3)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              badgeValue!,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
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

          // Label
          Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
