import 'package:flutter/material.dart';

PreferredSizeWidget customAppbar({required BuildContext context,leadingIcon,actionIcon}) {
  return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0.00,
      leading: leadingIcon != null ? Container(

    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: const Color(0xffF5F6FA),
        borderRadius: BorderRadius.circular(100)),
    child: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon:  Icon(
        leadingIcon,
      ),
    ),
  ) : null,
    actions: actionIcon != null ? [
             Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:  Icon(
                  actionIcon,
                ),
              ),
            )
    ] : null,
  );
}
