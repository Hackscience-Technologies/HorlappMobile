import 'package:hfoods/models/food_model.dart';
import 'package:hfoods/models/restaurant.dart';

class Restaurant extends RestaurantBase {
  final List<Food>? food;
  final String? rating;

  Restaurant({super.id, super.title, super.image, this.food, this.rating});

  @override
  Map<String, dynamic> toMap() {
    final parentMap = super.toMap();
    return {
      ...parentMap,
      'food': food,
      'rating': rating,
    };
  }
}
