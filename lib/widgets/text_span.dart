import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextSpan extends StatelessWidget {
  final String normalText;
  final String highlightedText;
  final VoidCallback? onTap;

  const MyTextSpan({
    super.key,
    required this.normalText,
    required this.highlightedText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: normalText,
            style: GoogleFonts.montserrat(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: highlightedText,
            style: GoogleFonts.montserrat(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
