import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/cart_controller.dart';
import 'package:getx_apps/models/cart_model.dart';
import 'package:getx_apps/widgets/elevated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: double.infinity,
              child: MyButton(
                onPressed: () {
                  final CartController cartController =
                      Get.put(CartController());
                  CartModel cartItem = CartModel(
                    title: title,
                    imageUrl: imageUrl,
                    price: price,
                  );
                  cartController.addToCart(cartItem);
                  Get.snackbar('Item Added', '$title has been added to cart.',
                      duration: 1.seconds);
                },
                backgroundColor: Colors.black,
                category: 'Add to Cart',
                showIcon: true,
                showBorder: false,
                isIconLeft: true,
                iconSize: 16,
                icon: Icons.shopping_cart,
                textColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
