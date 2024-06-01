import 'package:hfoods/models/restaurant.dart';

class OrderItemModel extends RestaurantBase {
  final String? price;

  OrderItemModel({
    super.id,
    super.title,
    super.image,
    this.price,
  });

  //Convert the food model to a Map
  @override
  Map<String, dynamic> toMap() {
    return {
      ...super.toMap(),
      'price': price,
    };
  }
}
