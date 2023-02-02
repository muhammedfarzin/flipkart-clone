import 'package:flipkart/presentations/home/widgets/home_action_button_list_item.dart';
import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flutter/material.dart';

class HomeActionButtonList extends StatelessWidget {
  const HomeActionButtonList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Constants.width8,
          HomeActionButtonListItem(
            label: "SuperCoin",
            badgeValue: "155",
          ),
          HomeActionButtonListItem(
            label: "Coupons",
          ),
          HomeActionButtonListItem(
            label: "Credit",
          ),
          HomeActionButtonListItem(
            label: "Group Buy",
            badgeValue: "NEW",
          ),
          HomeActionButtonListItem(
            label: "LiveShop+",
          ),
          HomeActionButtonListItem(
            label: "Feeds",
          ),
          HomeActionButtonListItem(
            label: "What's New?",
          ),
          HomeActionButtonListItem(
            label: "Camera",
          ),
          HomeActionButtonListItem(
            label: "Fire Drops",
          ),
          HomeActionButtonListItem(
            label: "Seller Hub",
          ),
          HomeActionButtonListItem(
            label: "Games",
          ),
          HomeActionButtonListItem(
            label: "Plus",
          ),
          HomeActionButtonListItem(
            label: "Sell-Back",
          ),
          Constants.width8,
        ],
      ),
    );
  }
}
