import 'package:flutter/material.dart';

class ConfirmPasswordField extends StatelessWidget {
  final TextEditingController? passwordController;
  final TextEditingController? confirmController;

  const ConfirmPasswordField({
    super.key,
    required this.passwordController,
    required this.confirmController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: confirmController,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Confirm Password',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value != passwordController?.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }
}
