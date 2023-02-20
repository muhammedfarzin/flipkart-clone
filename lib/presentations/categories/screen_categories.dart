import "package:flipkart/assets/category_icons.dart";
import "package:flipkart/presentations/categories/grid_view_category_item.dart";
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
              ),

              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        // Offer Zone
                        GridViewCategoryItem(
                          icon: CategoryIcons.offerZone,
                          label: "Offer Zone",
                        ),

                        // Grocery
                        GridViewCategoryItem(
                          icon: CategoryIcons.grocery,
                          label: "Grocery",
                        ),

                        // Mobiles
                        GridViewCategoryItem(
                          icon: CategoryIcons.mobiles,
                          label: "Mobiles",
                        ),

                        // Fashion
                        GridViewCategoryItem(
                          icon: CategoryIcons.fasion,
                          label: "Fashion",
                        ),
                      ],
                    ),
                  ),
                  Constants.lineH1Light,
                ]),
              ),

              // Categories Grid
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.2,
                  ),
                  delegate: SliverChildListDelegate([
                    // Electronics
                    const GridViewCategoryItem(
                      icon: CategoryIcons.electronics,
                      label: "Electronics",
                    ),

                    // Home
                    const GridViewCategoryItem(
                      icon: CategoryIcons.homeItems,
                      label: "Home",
                    ),

                    // Personal Care
                    const GridViewCategoryItem(
                      icon: CategoryIcons.personalCare,
                      label: "Personal Care",
                    ),

                    // Appliances
                    const GridViewCategoryItem(
                      icon: CategoryIcons.appliances,
                      label: "Appliances",
                    ),

                    // Toys & Baby
                    const GridViewCategoryItem(
                      icon: CategoryIcons.toysAndBaby,
                      label: "Toys & Baby",
                    ),

                    // Furniture
                    const GridViewCategoryItem(
                      icon: CategoryIcons.furniture,
                      label: "Furniture",
                    ),

                    // Flights & Hotels
                    const GridViewCategoryItem(
                      icon: CategoryIcons.flightsAndHotels,
                      label: "Flights & Hotels",
                    ),

                    // Insurance
                    const GridViewCategoryItem(
                      icon: CategoryIcons.insurance,
                      label: "Insurance",
                    ),

                    // Sports
                    const GridViewCategoryItem(
                      icon: CategoryIcons.sports,
                      label: "Sports",
                    ),

                    // Nutrition & more
                    const GridViewCategoryItem(
                      icon: CategoryIcons.nutrition,
                      label: "Nutrition & more",
                    ),

                    // Bikes & Cars
                    const GridViewCategoryItem(
                      icon: CategoryIcons.bikesAndCars,
                      label: "Bikes & Cars",
                    ),

                    // Gift Cards
                    const GridViewCategoryItem(
                      icon: CategoryIcons.giftCards,
                      label: "Gift Cards",
                    ),

                    // Medicines
                    const GridViewCategoryItem(
                      icon: CategoryIcons.medicines,
                      label: "Medicines",
                    ),

                    // Home Services
                    GridViewCategoryItem(
                      icon: CategoryIcons.homeService,
                      label: "Home Services",
                      badgeValue: "NEW",
                      badgeColor: Colors.pink.shade600,
                    ),

                    // Sell-Back
                    const GridViewCategoryItem(
                      icon: CategoryIcons.sellBack,
                      label: "Sell-Back",
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
