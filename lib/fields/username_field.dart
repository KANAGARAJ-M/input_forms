import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;

  const UsernameField({super.key, this.controller, this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label ?? 'Username',
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username is required';
        }
        if (value.length < 3) {
          return 'Username must be at least 3 characters';
        }
        return null;
      },
    );
  }
}
