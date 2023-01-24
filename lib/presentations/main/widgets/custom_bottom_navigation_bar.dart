import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  static final ValueNotifier<int> currentIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ValueListenableBuilder(
        valueListenable: currentIndexNotifier,
        builder: (context, value, child) {
          return BottomNavigationBar(
            currentIndex: value,
            onTap: (value) {
              currentIndexNotifier.value = value;
            },
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            iconSize: 26,
            unselectedLabelStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: "Notifications",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "Account",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Cart",
              ),
            ],
          );
        },
      ),
    );
  }
}
