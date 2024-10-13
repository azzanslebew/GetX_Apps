import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final bool isPasswordVisible;
  final IconData? icon;
  final VoidCallback? onIconPressed;
  final Function(String)? onChanged;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextInputType? keyboardType;

  const MyTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.icon,
    this.onIconPressed,
    this.onChanged,
    this.hintStyle,
    this.labelStyle,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle ??
              GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
        ),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          cursorColor: Colors.black,
          obscureText: isPassword && !isPasswordVisible,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle ??
                GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
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
              borderSide:
                  const BorderSide(color: Color(0xffE6E6E6), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color(0xffE6E6E6), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color(0xffE6E6E6), width: 1.5),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
