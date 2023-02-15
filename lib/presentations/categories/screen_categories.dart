import "package:flipkart/presentations/widgets/constants.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class ScreenCategories extends StatelessWidget {
  const ScreenCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blue.shade700,
      ),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              // AppBar
              SliverAppBar(
                // AppBar Background Color
                backgroundColor: Constants.customBlue,

                // Title
                title: const Text(
                  "All Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                // Actions
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
