import 'package:flipkart/assets/asset_icons.dart';
import 'package:flipkart/assets/flipkart_icons.dart';
import 'package:flipkart/presentations/account/widgets/icon_label_button_outlined.dart';
import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flipkart/presentations/widgets/custom_list_tile.dart';
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
              decoration: Constants.cardBoxDecoration,
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
                                Text(
                                  "Hey, Username",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
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
                                    Constants.width3,

                                    // Flipkart Plus Icon (Color)
                                    SizedBox(
                                      width: 12,
                                      child: Image.asset(FlipkartIcons.plus),
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
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      bottom: 12.0,
                    ),
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
            ),
            Constants.height5,

            // Credit Options
            Container(
              decoration: Constants.cardBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "Credit Options",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.card,
                      title: "Flipkart Axis Bank Credit Card",
                      subtitle: "Apply & enter world of unlimited benefits!",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.payLater,
                      title: "Flipkart Pay Later",
                      subtitle: "Complete application & get ₹500* gift card",
                    ),
                  ],
                ),
              ),
            ),
            Constants.height5,

            // Account Settings
            Container(
              decoration: Constants.cardBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "Account Settings",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.flipkartPlus,
                      title: "Flipkart Plus",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.user,
                      title: "Edit Profile",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.wallet,
                      title: "Saved Cards & Wallet",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.location,
                      title: "Saved Addresses",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.languages,
                      title: "Select Language",
                      iconScale: 12.5,
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.notificationSettings,
                      title: "Notification",
                    ),
                  ],
                ),
              ),
            ),
            Constants.height5,

            // My Activity
            Container(
              decoration: Constants.cardBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "My Activity",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.editing,
                      title: "Reviews",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.chat,
                      title: "Questions & Answers",
                    ),
                  ],
                ),
              ),
            ),
            Constants.height5,

            // Earn with Flipkart
            Container(
              decoration: Constants.cardBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "Earn with Flipkart",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.star,
                      title: "Flipkart Creator Studio",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.shop,
                      title: "Sell on Flipkart",
                    ),
                  ],
                ),
              ),
            ),
            Constants.height5,

            // Feedback & Information
            Container(
              decoration: Constants.cardBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "Feedback & Information",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.documents,
                      title: "Terms, Policies and Licenses",
                    ),
                    Constants.height15,
                    const CustomListTile(
                      icon: AssetIcons.information,
                      title: "Browse FAQs",
                    ),
                  ],
                ),
              ),
            ),

            // Logout Button
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    // Background Color
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Theme.of(context).colorScheme.background),

                    // Overlay Color
                    overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey.withOpacity(0.2)),

                    // Border
                    side: MaterialStateProperty.resolveWith(
                      (states) => BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),

                    // Elevation
                    elevation:
                        MaterialStateProperty.resolveWith((states) => 0)),
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    color: Constants.customDeepBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
