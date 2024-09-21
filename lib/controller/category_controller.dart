import 'package:get/get.dart';

class CategoryController extends GetxController {
  var selectedCategory = ''.obs;

  @override
  void onInit() {
    super.onInit();
    selectedCategory.value = 'All'; 
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
  }
}
