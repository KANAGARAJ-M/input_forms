import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DOBField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;

  const DOBField({super.key, this.controller, this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: label ?? 'Date of Birth',
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_month),
      ),
      onTap: () async {
        DateTime initialDate = DateTime.now().subtract(const Duration(days: 365 * 18));
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
        if (pickedDate != null) {
          controller?.text = DateFormat('yyyy-MM-dd').format(pickedDate);
        }
      },
    );
  }
}
