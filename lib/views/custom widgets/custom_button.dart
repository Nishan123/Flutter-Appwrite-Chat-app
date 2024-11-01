import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Icon? icon;
  final Color? iconColor;
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
    required this.textColor,
    this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon!.icon,
                color: iconColor,
              ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
