import 'package:flutter/material.dart';

class MyImageCard extends StatelessWidget {
  final String imagePath;
  final double borderRadius;
  final double elevation;

  const MyImageCard({
    super.key,
    required this.imagePath,
    this.borderRadius = 8.0,
    this.elevation = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
              width: double.infinity,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
