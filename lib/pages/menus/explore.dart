import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/text.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MyText(text: 'ini halaman explore', textStyle: TextStyle(),),
      ),
    );
  }
}
