import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasMinLength;
  final bool hasSpecialCharacter;

  const PasswordValidation({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasNumber,
    required this.hasMinLength,
    required this.hasSpecialCharacter,
  });

  Widget _buildValidationRow(bool condition, String text) {
    return Row(
      children: [
        Icon(
          condition ? Icons.check_circle : Icons.cancel,
          color: condition ? Colors.green : Colors.red,
          size: 18,
        ),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildValidationRow(hasLowerCase, "Contains lowercase letter"),
        const SizedBox(height: 2),
        _buildValidationRow(hasUpperCase, "Contains uppercase letter"),
        const SizedBox(height: 2),
        _buildValidationRow(hasNumber, "Contains number"),
        const SizedBox(height: 2),
        _buildValidationRow(hasMinLength, "At least 8 characters"),
        const SizedBox(height: 2),
        _buildValidationRow(hasSpecialCharacter, "Contains special character"),
      ],
    );
  }
}
