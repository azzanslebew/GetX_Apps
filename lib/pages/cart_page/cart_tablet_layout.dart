import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/cart_controller.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/confirmation_dialog.dart';
import 'package:getx_apps/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';

class CartTabletLayout extends StatelessWidget {
  const CartTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
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
        return GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: cartController.cartItems.length,
          itemBuilder: (context, index) {
            var item = cartController.cartItems[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        item.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Harga produk
                        Text(
                          item.price,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              ConfirmationDialog.show(
                                icon: Icons.delete_outline_rounded,
                                title: "Delete Item?",
                                message:
                                    "Are you sure you want to delete this item?",
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
                              color: Colors.white,
                              size: 16,
                            ),
                            label: const Text(
                              "Delete",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
