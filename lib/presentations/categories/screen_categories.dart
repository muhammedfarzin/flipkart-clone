import "package:flipkart/assets/category_icons.dart";
import "package:flipkart/assets/flipkart_icons.dart";
import "package:flipkart/assets/trending_stores_icons.dart";
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

              // Top Four Category
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

              // More on Flipkart Section
              SliverList(
                delegate: SliverChildListDelegate([
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "More on Flipkart",
                          style: TextStyle(
                            fontSize: 18.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        height: 1,
                        width: MediaQuery.of(context).size.width - 161,
                      ),
                    ],
                  ),
                ]),
              ),

              // More Flipkart Grid View
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.2,
                ),
                delegate: SliverChildListDelegate([
                  GridViewCategoryItem(
                    icon: FlipkartIcons.superCoin,
                    label: "SuperCoin",
                    circleColor: Colors.yellow.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.coupons,
                    label: "Coupons",
                    circleColor: Colors.red.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.creditCard,
                    label: "Credit",
                    circleColor: Colors.blue.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.whatsNew,
                    label: "what's New",
                    circleColor: Colors.orange.shade50,
                    imagePadding: 10,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.fireDrops,
                    label: "FireDrops",
                    circleColor: Colors.blue.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.camera,
                    label: "Camera",
                    circleColor: Colors.yellow.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.games,
                    label: "Games",
                    circleColor: Colors.orange.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.sellerHub,
                    label: "Become a Seller",
                    circleColor: Colors.blue.shade50,
                    imagePadding: 10,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.liveShop,
                    label: "LiveShop+",
                    circleColor: Colors.orange.shade50,
                    imagePadding: 15,
                  ),
                  GridViewCategoryItem(
                    icon: FlipkartIcons.plus,
                    label: "Plus Zone",
                    circleColor: Colors.orange.shade50,
                    imagePadding: 15,
                  ),
                ]),
              ),

              // Trending Stores Section
              SliverList(
                delegate: SliverChildListDelegate([
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Trending Stores",
                          style: TextStyle(
                            fontSize: 18.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade300,
                        height: 1,
                        width: MediaQuery.of(context).size.width - 157,
                      ),
                    ],
                  ),
                ]),
              ),

              // Trending Stores Grid View
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 25,
                    childAspectRatio: 1 / 1,
                  ),
                  delegate: SliverChildListDelegate([
                    Image.asset(TrendingStoresIcons.happyWinter),
                    Image.asset(TrendingStoresIcons.flipkartSamarth),
                    Image.asset(TrendingStoresIcons.flipkartGreen),
                    Image.asset(TrendingStoresIcons.valentinesDay),
                    Image.asset(TrendingStoresIcons.internationalStore),
                    Image.asset(TrendingStoresIcons.studentsClub),
                    Image.asset(TrendingStoresIcons.flipkartOriginals),
                    Image.asset(TrendingStoresIcons.travelStore),
                    Image.asset(TrendingStoresIcons.flipkartEmergingBrands),
                    Image.asset(TrendingStoresIcons.launchHub),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
