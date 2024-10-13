import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/divider.dart';
import 'package:getx_apps/widgets/list_tile.dart';
import 'package:getx_apps/widgets/confirmation_dialog.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'Account',
        fontSize: 24,
      ),
      body: ListView(
        children: [
          MyListTile(
            leading: const Icon(Icons.inventory_2_outlined, size: 24),
            title: 'My Orders',
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          MyListTile(
            leading: const Icon(Icons.person_outline, size: 24),
            title: 'My Details',
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          MyListTile(
            leading: const Icon(Icons.home_work_outlined, size: 24),
            title: 'Address Book',
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          MyListTile(
            leading: const Icon(Icons.payment_outlined, size: 24),
            title: 'Payment Methods',
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          const MyDivider(
            isThick: false,
            isColored: false,
          ),
          MyListTile(
            leading: const Icon(Icons.help_outline, size: 24),
            title: 'FAQs',
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          MyListTile(
            leading: const Icon(Icons.headset_mic_outlined, size: 24),
            title: 'Help Center',
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          const MyDivider(
            isThick: false,
            isColored: false,
          ),
          MyListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: 'Logout',
            titleStyle: GoogleFonts.montserrat(color: Colors.red),
            onTap: () {
              ConfirmationDialog.show(
              icon: Icons.error_outline_rounded, 
              title: "Logout?",
              message: "Are you sure you want to logout?",
              confirmText: "Yes, Logout",
              cancelText: "No, Cancel",
              onConfirm: () {
                Get.offAllNamed('/login');
              },
              onCancel: () {
                Get.back();
              },
            );
            },
          ),
        ],
      ),
    );
  }
}
