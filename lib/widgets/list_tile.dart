import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final TextStyle? subtitleStyle;
  final Widget? trailing;
  final VoidCallback onTap;

  const MyListTile({
    super.key,
    required this.leading,
    required this.title,
    this.titleStyle,
    this.subtitle,
    this.subtitleStyle,
    this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: titleStyle ??
            GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: subtitleStyle ?? GoogleFonts.montserrat(fontSize: 12),
            )
          : null,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
