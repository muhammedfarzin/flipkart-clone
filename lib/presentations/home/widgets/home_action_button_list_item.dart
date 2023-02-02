import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flutter/material.dart';

class HomeActionButtonListItem extends StatelessWidget {
  const HomeActionButtonListItem({
    Key? key,
    required this.label,
    this.badgeValue,
  }) : super(key: key);

  final String label;
  final String? badgeValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 22.0,
        horizontal: 8.0,
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Button Image
              const CircleAvatar(
                backgroundColor: Constants.customLightBlueShade,
                radius: 30,
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
          Constants.height10,

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
