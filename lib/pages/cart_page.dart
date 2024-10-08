import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/cart_controller.dart';
import 'package:getx_apps/widgets/appbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
          return const Center(child: Text('Your cart is empty.'));
        }
        return ListView.builder(
          itemCount: cartController.cartItems.length,
          itemBuilder: (context, index) {
            var item = cartController.cartItems[index];
            return ListTile(
              leading: Image.asset(item.imageUrl),
              title: Text(item.title),
              subtitle: Text(item.price),
              trailing: IconButton(onPressed: () {cartController.deleteCartItem(item.id!);}, icon: const Icon(Icons.delete_rounded)),
            );
          },
        );
      }),
    );
  }
}
