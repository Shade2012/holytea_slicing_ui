class CartItem {
  final int productId;
  final String productName;
  final String productImage;
  final int price;
  late int quantity;

  CartItem({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.price,
    required this.quantity,
  });
}
