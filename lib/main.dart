import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zapos/views/bottomNavigationBar/bottom_nav_screen.dart';
import 'package:zapos/views/productDetails.dart/product_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE5E5E5)),
        useMaterial3: true,
      ),
      home: const ProductDetailsScreen(),
    );
  }
}
