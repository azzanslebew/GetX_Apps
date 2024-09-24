import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final bool isPasswordVisible;
  final IconData? icon;
  final VoidCallback? onIconPressed;
  final Function(String)? onChanged;

  const MyTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.icon,
    this.onIconPressed,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPassword && !isPasswordVisible,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: onIconPressed,
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
