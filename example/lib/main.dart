import 'package:flutter/material.dart';
import 'package:input_forms/input_forms.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Form Package Example')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: const [
                EmailField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
