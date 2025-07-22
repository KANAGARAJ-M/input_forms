import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final FormFieldValidator<String>? validator;

  const EmailField({
    Key? key,
    this.controller,
    this.label,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: label ?? 'Email',
        border: const OutlineInputBorder(),
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Email is required';
            }
            final emailRegex = RegExp(r'^[^@]+@[^@]+\\.[^@]+');
            if (!emailRegex.hasMatch(value)) {
              return 'Enter a valid email';
            }
            return null;
          },
    );
  }
}
