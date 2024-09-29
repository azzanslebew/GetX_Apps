import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/text.dart';
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
          ListTile(
            leading: const Icon(
              Icons.inventory_2_outlined,
              size: 24,
            ),
            title: MyText(
                text: 'My Orders',
                textStyle: GoogleFonts.montserrat(fontSize: 16)),
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline, size: 24),
            title:
                MyText(text: 'My Details', textStyle: GoogleFonts.montserrat()),
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home_work_outlined, size: 24),
            title: MyText(
                text: 'Address Book', textStyle: GoogleFonts.montserrat()),
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.payment_outlined, size: 24),
            title: MyText(
                text: 'Payment Methods', textStyle: GoogleFonts.montserrat()),
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help_outline, size: 24),
            title: MyText(text: 'FAQs', textStyle: GoogleFonts.montserrat()),
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.headset_mic_outlined, size: 24),
            title: MyText(
                text: 'Help Center', textStyle: GoogleFonts.montserrat()),
            trailing: const Icon(Icons.arrow_forward_ios,
                size: 20, color: Color(0xffB3B3B3)),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: MyText(
              text: 'Logout',
              textStyle: GoogleFonts.montserrat(color: Colors.red),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
