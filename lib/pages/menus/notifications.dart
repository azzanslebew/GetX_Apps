import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/text.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MyText(text: 'ini halaman notification', textStyle: TextStyle(),),
      ),
    );
  }
}
