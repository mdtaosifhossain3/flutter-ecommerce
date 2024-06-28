import 'package:flutter/material.dart';
import 'package:zapos/const/all_colors.dart';

class CustomTextfield extends StatelessWidget {
  final String? labelName;
  const CustomTextfield({super.key, this.labelName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.00, bottom: 5.00),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labelName,
            labelStyle: const TextStyle(
                fontSize: 13.00,
                color: AllColors.greyColor,
                fontWeight: FontWeight.normal),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AllColors.inputBorderColor)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AllColors.inputBorderColor)),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AllColors.redColor))),
      ),
    );
  }
}
