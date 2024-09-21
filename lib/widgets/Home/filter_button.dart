import 'package:flutter/material.dart';

class MyFilterButton extends StatelessWidget {
  const MyFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.tune,
            color: Colors.white,
          )),
    );
  }
}
