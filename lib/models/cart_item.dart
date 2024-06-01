import 'package:hfoods/models/restaurant.dart';

class CartItemModel extends RestaurantBase {
  final String? price;
  final int? quantity;

  CartItemModel(
      {super.id, super.title, super.image, this.price, this.quantity});

  //Convert the food model to a Map
  @override
  Map<String, dynamic> toMap() {
    return {
      ...super.toMap(),
      'price': price,
      'quantity': quantity,
    };
  }
}
