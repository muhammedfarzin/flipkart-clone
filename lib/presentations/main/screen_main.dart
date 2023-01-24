import 'package:flipkart/presentations/account/screen_account.dart';
import 'package:flipkart/presentations/cart/screen_cart.dart';
import 'package:flipkart/presentations/categories/screen_categories.dart';
import 'package:flipkart/presentations/home/screen_home.dart';
import 'package:flipkart/presentations/main/widgets/custom_bottom_navigation_bar.dart';
import 'package:flipkart/presentations/notifications/screen_notifications.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  static const List<Widget> pages = [
    ScreenHome(),
    ScreenCategories(),
    ScreenNotifications(),
    ScreenAccount(),
    ScreenCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: CustomBottomNavigationBar.currentIndexNotifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
