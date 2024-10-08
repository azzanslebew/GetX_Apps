import 'package:get/get.dart';
import '../models/cart_model.dart'; // Import your CartModel
import '../widgets/home/categories/load_shirts.dart';
import '../widgets/home/categories/load_pants.dart';
import '../widgets/home/categories/load_shoes.dart';
import '../widgets/home/categories/load_accessories.dart';
import '../widgets/home/categories/load_bags.dart';
import '../widgets/home/categories/load_jackets.dart';

class CategoryController extends GetxController {
  var selectedCategory = 'All'.obs;
  var products = <Map<String, String>>[].obs;
  var cartItems = <CartModel>[].obs; 

  @override
  void onInit() {
    super.onInit();
    loadAllProducts();
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
    switch (category) {
      case 'Shirts':
        products.value = shirts;
        break;
      case 'Pants':
        products.value = pants;
        break;
      case 'Shoes':
        products.value = shoes;
        break;
      case 'Accessories':
        products.value = accessories;
        break;
      case 'Bags':
        products.value = bags;
        break;
      case 'Jackets':
        products.value = jackets;
        break;
      default:
        loadAllProducts();
    }
  }

  void loadAllProducts() {
    products.value = [
      ...shirts,
      ...pants,
      ...shoes,
      ...accessories,
      ...bags,
      ...jackets,
    ];
  }

  void addToCart(CartModel product) { 
    cartItems.add(product);
  }
}
