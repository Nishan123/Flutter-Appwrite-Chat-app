import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final VoidCallback? onPressedPrefix;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType textInputType;
  const CustomTextfield({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.controller,
    this.onPressedPrefix,
    required this.obscureText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null
            ? IconButton(onPressed: onPressedPrefix, icon: prefixIcon!)
            : null,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black45),
        filled: true,
        fillColor: Colors.black12,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Colors.blue.withOpacity(0.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
