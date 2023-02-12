import 'package:flutter/material.dart';

class Constants {
  // ------------------Seperator-------------------
  // Width Seperator
  static const Widget width3 = SizedBox(
    width: 3,
  );

  static const Widget width8 = SizedBox(
    width: 8,
  );

  // Height Seperator
  static const Widget height2 = SizedBox(
    height: 2,
  );

  static const Widget height5 = SizedBox(
    height: 5,
  );

  static const Widget height10 = SizedBox(
    height: 10,
  );

  // Line Seperator
  static Widget lineH1 = Container(
    color: Colors.grey.shade300,
    height: 1,
    width: double.infinity,
  );

  static Widget lineH1Light = Container(
    color: Colors.grey.shade100,
    height: 1,
    width: double.infinity,
  );

  // --------------------Colors--------------------

  // Blue Shades
  static const Color customBlue = Color.fromARGB(255, 0, 115, 255);
  static Color customDeepBlue = Colors.blue.shade700;
  static const Color customLightBlueShade = Color.fromARGB(255, 241, 245, 255);

  // Green Shades
  static const Color customGreen = Color.fromARGB(255, 0, 136, 122);

  // --------------------Border--------------------

  static Border outlinedBorder = Border.all(
    width: 1,
    color: Colors.grey.shade300,
  );

  static Border outlinedBorder2 = Border.all(
    width: 1.3,
    color: Colors.grey.shade300,
  );

  // ----------------Box Decoration----------------
  static BoxDecoration cardBoxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border(
      bottom: BorderSide(
        color: Colors.grey.shade300,
        width: 2,
      ),
    ),
  );
}
