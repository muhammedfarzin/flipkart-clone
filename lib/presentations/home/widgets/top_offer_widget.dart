import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flutter/material.dart';

class TopOfferWidget extends StatelessWidget {
  const TopOfferWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.priceRange,
  }) : super(key: key);

  final String image;
  final String title;
  final String priceRange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Constants.outlinedBorder,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            // Offer Image
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.8],
                  colors: [
                    Colors.blue,
                    Colors.transparent,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: AspectRatio(
                    aspectRatio: 20 / 13.0,
                    child: Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 20 / 13.0,
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 0.6],
                              colors: [
                                Color.fromARGB(69, 158, 158, 158),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Offer Title
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            Constants.height2,

            // Offer Price Range
            Text(
              priceRange,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Constants.height5,
          ],
        ),
      ),
    );
  }
}
