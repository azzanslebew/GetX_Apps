import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/cart_controller.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/confirmation_dialog.dart';
import 'package:getx_apps/widgets/text.dart';
import 'package:getx_apps/widgets/list_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'My Cart',
        fontSize: 24,
        showCartIcon: false,
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 70,
                ),
                const SizedBox(height: 20),
                MyText(
                  text: 'Your Cart Is Empty!',
                  textStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                MyText(
                  text: "When you add products, they'll\nappear here.",
                  textAlign: TextAlign.center,
                  textStyle: GoogleFonts.montserrat(),
                ),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: cartController.cartItems.length,
          itemBuilder: (context, index) {
            var item = cartController.cartItems[index];
            return Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: MyListTile(
                leading: Image.asset(item.imageUrl),
                title: item.title,
                subtitle: item.price,
                trailing: IconButton(
                  onPressed: () {
                    ConfirmationDialog.show(
                      icon: Icons.delete_outline_rounded,
                      title: "Delete Item?",
                      message: "Are you sure you want to delete this item?",
                      confirmText: "Yes, Delete",
                      cancelText: "No, Cancel",
                      onConfirm: () {
                        cartController.deleteCartItem(item.id!);
                        Get.back();
                      },
                      onCancel: () {
                        Get.back();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.delete_rounded,
                    color: Colors.red,
                  ),
                ),
                onTap: () {},
              ),
            );
          },
        );
      }),
    );
  }
}
