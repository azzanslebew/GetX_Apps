import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/list_tile.dart';
import 'package:getx_apps/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'Notifications',
        fontSize: 24,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 16),
          MyText(
            text: 'Today',
            textStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          MyListTile(
            leading: const Icon(Icons.local_offer_outlined, size: 24),
            title: '30% Special Discount!',
            subtitle: 'Special promotion only valid today.',
            onTap: () {},
          ),
          const Divider(),
          const SizedBox(height: 8),
          MyText(
            text: 'Yesterday',
            textStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          MyListTile(
            leading:
                const Icon(Icons.account_balance_wallet_outlined, size: 24),
            title: 'Top Up E-wallet Successfully!',
            subtitle: 'You have top up your e-wallet.',
            onTap: () {},
          ),
          const Divider(),
          MyListTile(
            leading: const Icon(Icons.location_on_outlined, size: 24),
            title: 'New Service Available!',
            subtitle: 'Now you can track order in real-time.',
            onTap: () {},
          ),
          const Divider(),
          const SizedBox(height: 8),
          MyText(
            text: 'August 26, 2024',
            textStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          MyListTile(
            leading: const Icon(Icons.credit_card_outlined, size: 24),
            title: 'Credit Card Connected!',
            subtitle: 'Credit card has been linked.',
            onTap: () {},
          ),
          const Divider(),
          MyListTile(
            leading: const Icon(Icons.account_circle_outlined, size: 24),
            title: 'Account Setup Successfully!',
            subtitle: 'Your account has been created.',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
