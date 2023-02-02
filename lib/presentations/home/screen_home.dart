import 'package:flipkart/presentations/home/widgets/home_action_button_list.dart';
import 'package:flipkart/presentations/home/widgets/home_app_bar.dart';
import "package:flutter/material.dart";

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const HomeAppBar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // Live Sales and Offers Banner
                  AspectRatio(
                    aspectRatio: 20 / 9,
                    child: Container(
                      color: Colors.lightGreen,
                      height: 50,
                      width: double.infinity,
                    ),
                  ),

                  // Buttons like supercoin and offers
                  const HomeActionButtonList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
