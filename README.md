<div align="center">

# 🎯 Input Forms [Flutter Package]

[![pub package](https://img.shields.io/pub/v/input_forms.svg?label=pub&color=blue)](https://pub.dev/packages/input_forms)
<!-- [![Build Status](https://img.shields.io/github/actions/workflow/status/KANAGARAJ-M/input_forms/build.yml?branch=main&label=build&logo=github)](https://github.com/KANAGARAJ-M/input_forms/actions) -->
<!-- [![Coverage Status](https://img.shields.io/codecov/c/github/KANAGARAJ-M/input_forms/main?logo=codecov)](https://codecov.io/gh/KANAGARAJ-M/input_forms) -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?logo=mit)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/KANAGARAJ-M/input_forms?style=social)](https://github.com/KANAGARAJ-M/input_forms/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/KANAGARAJ-M/input_forms?style=social)](https://github.com/KANAGARAJ-M/input_forms/network/members)

---

### 🚀 Supercharge Your Flutter Forms
Beautiful, validated, and customizable form fields for Flutter applications

[Getting Started](#-installation) •
[Features](#-features) •
[Usage](#-usage) •
[Examples](https://github.com/KANAGARAJ-M/input_forms/tree/main/example) •
[API Docs](https://pub.dev/documentation/input_forms/latest/) •
[Report Bug](https://github.com/KANAGARAJ-M/input_forms/issues/new?template=bug_report.md) •
[Request Feature](https://github.com/KANAGARAJ-M/input_forms/issues/new?template=feature_request.md)

</div>

## 🎯 Overview

Input Forms provides a comprehensive suite of pre-built, highly customizable form components that help you build beautiful forms in minutes instead of hours. Perfect for both rapid prototyping and production applications.

### Why Choose Input Forms?

- 🎨 **Beautiful by Default**: Material Design 3 compliant with customizable themes
- ✨ **Ready to Use**: Pre-built components for common form scenarios
- 🔒 **Built-in Validation**: Comprehensive validation out of the box
- 🎮 **Developer Friendly**: Intuitive API with extensive documentation
- 📱 **Cross Platform**: Works seamlessly across all platforms
- 🔥 **Performance Focused**: Optimized for smooth performance

## 📦 Installation

```yaml
dependencies:
  input_forms: ^0.0.1
```

Then run:
```bash
flutter pub get
```

## ⚡ Quick Start

```dart
import 'package:input_forms/input_forms.dart';

// That's it! Now use any form field:
EmailField(
  controller: emailController,
  label: 'Email Address',
)
```

## 🎨 Features

### Available Now

| Component | Description |
|-----------|-------------|
| 📧 **EmailField** | Validated email input with format checking |
| 🔒 **PasswordField** | Secure password input with visibility toggle |
| ✅ **ConfirmPasswordField** | Password confirmation with matching validation |
| 👤 **UsernameField** | Username input with length validation |
| 📅 **DatePickerField** | Date selection with calendar picker |
| 🎂 **DOBField** | Date of birth picker with age-appropriate ranges |
| 📝 **DropdownField** | Generic dropdown with custom data support |

### Coming Q3-Q4 2025

| Component | Description |
|-----------|-------------|
| 🔍 **SearchableDropdown** | Smart dropdown with search functionality |
| 📱 **PhoneField** | International phone number input suite |
| 🌍 **LocationFields** | Geographic input with maps integration |
| 📤 **FileUploadField** | File upload with preview support |
| ✍️ **SignatureField** | Digital signature capture |
| 🎨 **ColorPicker** | Visual color selection |
| 🏷️ **TagField** | Dynamic tag management |
| 📝 **RichTextEditor** | Formatted text input |

## 💻 Usage

### Complete Form Example

```dart
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailField(
            controller: _emailController,
            label: 'Email',
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 16),
          PasswordField(
            controller: _passwordController,
            label: 'Password',
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text('Login'),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Process form
    }
  }
}
```

## 🎯 Platform Support

| Platform | Support |
|----------|---------|
| Android  | ✅ |
| iOS      | ✅ |
| Web      | ✅ |
| Windows  | ✅ |
| macOS    | ✅ |
| Linux    | ✅ |

## 🤝 Contributing

We love contributions! Here's how you can help:

1. 🔍 **Find a Bug?** Open an issue!
2. 🎯 **Missing a Feature?** Request it!
3. 🎨 **Want to Contribute?** Submit a pull request!


## 📊 Project Stats

| Metric | Value |
|--------|-------|
| **Latest Update** | 2025-07-21 15:26:16 UTC |
| **Maintained By** | [@KANAGARAJ-M](https://github.com/KANAGARAJ-M) |
| **Version** | 0.0.1 (Active Development) |

## 📚 Resources

- [📖 API Documentation](https://pub.dev/documentation/input_forms/latest/)
- [💡 Examples](https://github.com/KANAGARAJ-M/input_forms/tree/main/example)
- [🐛 Issue Tracker](https://github.com/KANAGARAJ-M/input_forms/issues)
- [🚀 Changelog](CHANGELOG.md)

## 📄 License

```text
MIT License
Copyright (c) 2025 Kanagaraj.M
```
[View Full License](LICENSE)

## 🔑 Keywords

flutter form builder, material design forms, flutter input validation, flutter form fields, flutter UI components, form validation, input widgets, flutter forms, dart forms, form components, mobile forms, cross-platform forms, form validation package, input fields, form elements, input forms, form fields, input fields

---

<div align="center">

Made with ❤️ by [Kanagaraj.M](https://github.com/KANAGARAJ-M) | [NoCorps](https://nocorps.org/)

⭐️ Star us on GitHub — it motivates us a lot!

</div>