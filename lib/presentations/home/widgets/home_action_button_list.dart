import 'package:flipkart/assets/flipkart_icons.dart';
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
            icon: FlipkartIcons.superCoin,
            label: "SuperCoin",
            badgeValue: "155",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.coupons,
            label: "Coupons",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.creditCard,
            label: "Credit",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.groupBuy,
            label: "Group Buy",
            badgeValue: "NEW",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.liveShop,
            label: "LiveShop+",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.whatsNew,
            label: "What's New?",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.camera,
            label: "Camera",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.fireDrops,
            label: "Fire Drops",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.sellerHub,
            label: "Seller Hub",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.games,
            label: "Games",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.plus,
            label: "Plus",
          ),
          HomeActionButtonListItem(
            icon: FlipkartIcons.sellerBack,
            label: "Sell-Back",
          ),
          Constants.width8,
        ],
      ),
    );
  }
}
