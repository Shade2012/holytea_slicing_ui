import 'package:get/get.dart';

class CartItem {
  final RxInt productId;
  final String productName;
  final String productImage;
  final int price;
  late RxInt quantity;
  RxBool selected;

  CartItem({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.price,
    required this.quantity,
    bool selected = false,
  }): selected = selected.obs;
}
