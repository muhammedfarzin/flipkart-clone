import 'package:flipkart/presentations/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 13,
              right: 8.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.customBlue,
              ),
              width: double.infinity,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 8.0,
              right: 13,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              width: double.infinity,
            ),
          ),
        ),
      ],

      // AppBar Bottom
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 54),
        child: Row(
          children: [
            // Brand Mall Toggle
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Brand Mall",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Constants.height5,

                  // Brand Mall Toggle Button
                  FlutterSwitch(
                    onToggle: (value) {},
                    value: false,
                    height: 18,
                    width: 48,
                    toggleSize: 17,
                    valueFontSize: 11,
                    showOnOff: true,
                    padding: 1,

                    // Inactive Design
                    inactiveColor: Colors.grey.shade300,
                    inactiveText: "OFF",
                    inactiveTextFontWeight: FontWeight.w500,
                    inactiveTextColor: Colors.black,

                    // Active Design
                    activeColor: Colors.black,
                    activeText: "ON",
                    activeTextFontWeight: FontWeight.w500,
                    activeTextColor: Colors.white,
                  ),
                ],
              ),
            ),
            // Search Box
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      // SearchBox Design
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        // Elements of Search Box
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              // Search Icon
                              Icon(
                                Icons.search,
                                color: Colors.grey.shade600,
                              ),
                              Constants.width8,

                              // Search Box Tooltip Text
                              Expanded(
                                child: Text(
                                  "Search for products",
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                              Constants.width8,
                              Icon(
                                Icons.mic_outlined,
                                color: Colors.grey.shade600,
                              ),
                              Constants.width8,
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
