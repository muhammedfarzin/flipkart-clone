import 'package:flipkart/presentations/home/widgets/home_app_bar.dart';
import "package:flutter/material.dart";

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: const SafeArea(
        child: CustomScrollView(
          slivers: [
            HomeAppBar(),
          ],
        ),
      ),
    );
  }
}
