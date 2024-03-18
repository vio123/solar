import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  const TextInput({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFBCBCBC),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xFF312E2C),
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Color(0xFF312E2C),
            // Culoare diferită la focalizare
            width: 2.0, // Grosime diferită la focalizare
          ),
        ),
      ),
    );
  }
}
