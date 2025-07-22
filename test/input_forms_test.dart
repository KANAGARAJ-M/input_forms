import 'package:flutter/material.dart';
import 'package:input_forms/input_forms.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Form Field Widgets', () {
    testWidgets('EmailField shows error for invalid email', (tester) async {
      final emailController = TextEditingController();

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Form(
            child: EmailField(controller: emailController),
          ),
        ),
      ));

      // Leave empty and try validation
      await tester.enterText(find.byType(TextFormField), 'invalidemail');
      final form = Form.of(tester.element(find.byType(EmailField)));
      expect(form.validate(), isFalse);
    });

    testWidgets('PasswordField hides and shows password', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: PasswordField(),
        ),
      ));

      final visibilityIcon = find.byIcon(Icons.visibility);
      expect(visibilityIcon, findsOneWidget);

      await tester.tap(visibilityIcon);
      await tester.pump();

      final visibilityOffIcon = find.byIcon(Icons.visibility_off);
      expect(visibilityOffIcon, findsOneWidget);
    });

    testWidgets('ConfirmPasswordField shows mismatch error', (tester) async {
      final pass = TextEditingController(text: "123456");
      final confirm = TextEditingController(text: "654321");

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Form(
            child: ConfirmPasswordField(
              passwordController: pass,
              confirmController: confirm,
            ),
          ),
        ),
      ));

      final form = Form.of(tester.element(find.byType(ConfirmPasswordField)));
      expect(form.validate(), isFalse);
    });
  });
}
