import 'package:get/get.dart';
import 'package:getx_apps/models/cart_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CartController extends GetxController {
  static Database? _db;
  var cartItems = <CartModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCartItems(); 
  }

  Future<Database?> get db async {
    _db ??= await initDB();
    return _db;
  }

  Future<Database> initDB() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'cart_database.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE cart(
            id INTEGER PRIMARY KEY AUTOINCREMENT, 
            title TEXT, 
            imageUrl TEXT, 
            price TEXT
          )
        ''');
      },
    );
  }

  // Insert Item to Cart
  Future<int> addToCart(CartModel item) async {
    var dbClient = await db;
    int result = await dbClient!.insert('cart', item.toMap());
    loadCartItems();
    return result;
  }

  // Retrieve Cart Items
  Future<void> loadCartItems() async {
    var dbClient = await db;
    List<Map<String, dynamic>> queryResult = await dbClient!.query('cart');
    cartItems.assignAll(queryResult.map((data) => CartModel.fromMap(data)).toList());
  }

  // Delete Cart Item
  Future<void> deleteCartItem(int id) async {
    var dbClient = await db;
    await dbClient!.delete('cart', where: 'id = ?', whereArgs: [id]);
    loadCartItems();
  }
}
