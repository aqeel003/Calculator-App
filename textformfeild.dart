import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: TextFormField(
        controller: controller, // Use the provided controller
        readOnly: true,
        showCursor: true,
        decoration: const InputDecoration(
          border: InputBorder.none,
          fillColor: Color.fromARGB(255, 0, 0, 0),
          filled: true,
        ),
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
