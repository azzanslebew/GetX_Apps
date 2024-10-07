import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  final Widget? iconWidget;
  final bool showBorder;

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
    this.iconWidget,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category,
              style: GoogleFonts.montserrat(
                  color: isSelected ? Colors.white : textColor),
            ),
            const SizedBox(
              width: 10,
            ),
            if (showIcon)
              iconWidget ??
                  (icon != null
                      ? Icon(icon, color: textColor)
                      : const SizedBox()),
          ],
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: showBorder
                ? BorderSide(
                    color: isSelected
                        ? Colors.transparent
                        : const Color(0xffE6E6E6),
                  )
                : BorderSide.none,
          ),
          backgroundColor: isSelected ? Colors.black : backgroundColor,
          foregroundColor: isSelected ? Colors.white : textColor,
          elevation: elevation,
        ),
      ),
    );
  }
}
