import 'package:flipkart/presentations/main/screen_main.dart';
import 'package:flipkart/presentations/widgets/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlipKart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(background: Colors.white)),
      home: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: const ScreenMain(),
      ),
    );
  }
}
