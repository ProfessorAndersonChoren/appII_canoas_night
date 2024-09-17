import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.label,
    required this.inputType,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: (value) {
          return null;
        },
        decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: Theme.of(context).colorScheme.primary,
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        keyboardType: inputType,
        obscureText: isPassword,
      ),
    );
  }
}
