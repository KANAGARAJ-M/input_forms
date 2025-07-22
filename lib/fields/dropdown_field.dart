import 'package:flutter/material.dart';

class DropdownField<T> extends StatelessWidget {
  final String? label;
  final List<T> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final String Function(T)? itemLabel;

  const DropdownField({
    super.key,
    this.label,
    required this.items,
    this.value,
    this.onChanged,
    required this.itemLabel,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      decoration: InputDecoration(
        labelText: label ?? 'Select',
        border: const OutlineInputBorder(),
      ),
      items: items.map((e) {
        return DropdownMenuItem<T>(
          value: e,
          child: Text(itemLabel!(e)),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
