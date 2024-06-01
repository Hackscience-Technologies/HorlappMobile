import 'package:hfoods/models/restaurant.dart';

class Food extends RestaurantBase{
  final String? price;
  final String? rating;

  Food({super.id, super.title, super.image, this.price, this.rating});

  @override
  Map<String, String?> toMap() {
    return {
      ...super.toMap(),
      'price': price,
      'rating': rating,
    };
  }
}
