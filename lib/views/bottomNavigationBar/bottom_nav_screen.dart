import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zapos/views/Home/home.dart';
import 'package:zapos/views/auth/signupscreen/signup_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var navIndex = 0;

  List navBody = [const HomeView(), const SignupScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[navIndex],
      bottomNavigationBar: GNav(
        gap: 6,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            onPressed: () {
              navIndex = 0;
            },
          ),
          const GButton(
            icon: Icons.favorite_outline_outlined,
          ),
          const GButton(
            icon: Icons.shopping_bag_outlined,
          ),
          GButton(
              icon: Icons.wallet_outlined,
              onPressed: () {
                return Get.to(const HomeView());
              }),
        ],
        selectedIndex: navIndex,
        onTabChange: (value) {
          setState(() {
            navIndex = value;
          });
        },
      ),
    );
  }
}
