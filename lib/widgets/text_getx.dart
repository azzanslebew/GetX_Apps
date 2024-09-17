import 'package:flutter/material.dart';

class TextGetx extends StatelessWidget {
  final String text;
  final double fontSize;

  const TextGetx({super.key, required this.text, this.fontSize = 12.0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
