import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/text_getx.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TextGetx(text: 'ini halaman profile'),
      ),
    );
  }
}
