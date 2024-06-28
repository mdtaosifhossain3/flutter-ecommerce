import 'package:flutter/material.dart';
import 'package:zapos/customWidegets/custom_appbar.dart';
import 'package:zapos/customWidegets/custom_button.dart';
import 'package:zapos/customWidegets/custom_textfield.dart';
import 'package:zapos/const/all_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context: context, leadingIcon: Icons.arrow_back),
      body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                  color: AllColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0),
            ),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextfield(labelName: "Username"),
                CustomTextfield(labelName: "Email"),
                CustomTextfield(labelName: "Password"),
              ],
            )),
            CustomButton(
                bgColor: AllColors.primaryColor,
                btnName: "Sign In",
                textColor: AllColors.whiteColor,
                height: 75.00,
                roundedBorder: 0),
          ]),
    );
  }
}
