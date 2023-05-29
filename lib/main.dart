import 'package:airbnb_listing_widget/app_scroll_behavior.dart';
import 'package:airbnb_listing_widget/listings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airbnb Listing Widget',
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: const ListingsPage(),
    );
  }
}
