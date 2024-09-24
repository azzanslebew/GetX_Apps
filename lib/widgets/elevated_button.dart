import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final double elevation;
  final Color backgroundColor;
  final Color textColor;
  final String category;
  final bool isSelected;
  final bool showIcon;
  final IconData? icon;

  const MyButton({
    super.key,
    required this.onPressed,
    this.borderRadius = 8.0,
    this.elevation = 0.0,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    required this.category,
    this.isSelected = false,
    this.showIcon = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: showIcon && icon != null
            ? Icon(icon, color: textColor)
            : Container(),
        label: Text(category),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              style: BorderStyle.solid,
              color: isSelected ? Colors.transparent : const Color(0xffE6E6E6),
            ),
          ),
          backgroundColor: isSelected ? Colors.black : backgroundColor,
          foregroundColor: isSelected ? Colors.white : textColor,
          elevation: elevation,
        ),
      ),
    );
  }
}
