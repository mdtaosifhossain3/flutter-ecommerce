import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String btnName;
  final height;
  final Function? onClick;
  final roundedBorder;

  const CustomButton(
      {super.key,
      required this.bgColor,
      required this.btnName,
      required this.textColor,
      this.onClick,
      this.height,
      required this.roundedBorder});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onClick!();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            minimumSize: height != null ? Size.fromHeight(height) : null,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(roundedBorder)),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18)),
        child: Text(
          btnName,
          style: TextStyle(color: textColor),
        ));
  }
}
