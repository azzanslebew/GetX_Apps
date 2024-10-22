class CartModel {
  final int? id;
  final String title;
  final String imageUrl;
  final String price;

  CartModel(
      {this.id,
      required this.title,
      required this.imageUrl,
      required this.price});

  // Method untuk mengonversi CartModel menjadi Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  // Method untuk membuat CartModel dari Map
  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      id: map['id'],
      title: map['title'],
      imageUrl: map['imageUrl'],
      price: map['price'],
    );
  }
}
