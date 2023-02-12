import 'package:flipkart/assets/asset_icons.dart';
import 'package:flipkart/presentations/account/widgets/icon_label_button_outlined.dart';
import 'package:flipkart/presentations/widgets/constants.dart';
import "package:flutter/material.dart";

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      right: 15.0,
                      bottom: 8,
                      left: 15.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Salutation and Flipkart Plus
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Salutation
                                const Text(
                                  "Hey, Username",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Constants.height10,
                                Row(
                                  children: [
                                    Text(
                                      "Join",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    Text(
                                      " Flipkart",
                                      style: TextStyle(
                                        color: Constants.customDeepBlue,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      " Plus",
                                      style: TextStyle(
                                        color: Colors.yellow.shade700,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 17,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        // SuperCoin
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          padding: const EdgeInsets.all(4.0),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.yellow.shade700,
                                radius: 10,
                                child: const Icon(
                                  Icons.electric_bolt,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                              Constants.width3,
                              const Text(
                                "155",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Constants.lineH1,

                  // Buttons Like Orders and Wishlist
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: const [
                        Flexible(
                          child: IconLabelButtonOutlined(
                            icon: AssetIcons.package,
                            label: "Orders",
                          ),
                        ),
                        Flexible(
                          child: IconLabelButtonOutlined(
                            icon: AssetIcons.heart,
                            label: "Wishlist",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: const [
                        Flexible(
                          child: IconLabelButtonOutlined(
                            icon: AssetIcons.gift,
                            label: "Coupons",
                          ),
                        ),
                        Flexible(
                          child: IconLabelButtonOutlined(
                            icon: AssetIcons.headset,
                            label: "Help Center",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
