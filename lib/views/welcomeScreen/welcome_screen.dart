import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zapos/customWidegets/custom_button.dart';
import 'package:zapos/views/auth/signupscreen/signup_screen.dart';
import 'package:zapos/const/all_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            color: AllColors.primaryColor,
            image: DecorationImage(
                image: AssetImage("assets/images/welcome-screen-logo.png"))),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.00, vertical: 20),
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 35, top: 20),
              decoration: BoxDecoration(
                  color: AllColors.whiteColor,
                  borderRadius: BorderRadius.circular(20.00)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "Look Good,Feel Good",
                  style: TextStyle(
                      color: AllColors.blackColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Create your individual & unique style and look amazing everyday.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AllColors.greyColor,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      btnName: "Login",
                      textColor: AllColors.greyColor,
                      bgColor: const Color(0xffF5F6FA),
                      roundedBorder: 10.00,
                      onClick: () {
                        Get.to(const SignupScreen());
                      },
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomButton(
                      btnName: "Register",
                      textColor: Colors.white,
                      bgColor: AllColors.primaryColor,
                      roundedBorder: 10,
                      onClick: () {
                        Get.to(const SignupScreen());
                      },
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
