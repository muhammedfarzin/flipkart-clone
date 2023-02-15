import 'package:flipkart/presentations/home/widgets/home_action_button_list.dart';
import 'package:flipkart/presentations/home/widgets/home_app_bar.dart';
import 'package:flipkart/presentations/home/widgets/top_offer_widget.dart';
import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flipkart/presentations/widgets/dummy_data.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black12,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
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
                    const HomeActionButtonList(),

                    Constants.lineH1Light,

                    // Top Offers
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: TopOfferWidget(
                            image: DummyData.topOffers[0],
                            title: "OPPO K10 5G",
                            priceRange: "Just ₹16,999",
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: TopOfferWidget(
                            image: DummyData.topOffers[1],
                            title: "Mens Shoes",
                            priceRange: "From ₹1,299",
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: TopOfferWidget(
                            image: DummyData.topOffers[2],
                            title: "1.95\"Large Display",
                            priceRange: "Just ₹2,499",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
