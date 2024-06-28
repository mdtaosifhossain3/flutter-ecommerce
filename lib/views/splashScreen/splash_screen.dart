import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zapos/const/all_colors.dart';
import 'package:zapos/const/app_config.dart';
import 'package:zapos/views/welcomeScreen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(const WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AllColors.primaryColor,
      body: Center(
        child: AppConfig.appName,
      ),
    );
  }
}
