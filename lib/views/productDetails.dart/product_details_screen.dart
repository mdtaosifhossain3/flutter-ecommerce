import 'package:flutter/material.dart';
import 'package:zapos/const/all_colors.dart';
import 'package:zapos/customWidegets/custom_appbar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Stack(
                  children: [
                    Container(
                      height: size.height * .4,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/p.png"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        top: 10,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_back))),
                    Positioned(
                        right: 10,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.shopping_bag)))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
