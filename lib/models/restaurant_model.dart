import 'package:hfoods/models/food_model.dart';

class Restaurant {
  final String? id;
  final String? title;
  final String? image;
  final List<Food>? food;
  final String? rating;

  Restaurant({this.id, this.title, this.image, this.food, this.rating});

  //Factory method to create a food model from a map
  factory Restaurant.fromMap(Map<String, dynamic> restaurantData) {
    return Restaurant(
        id: restaurantData['id'],
        title: restaurantData['title'],
        image: restaurantData['image'],
        food: restaurantData['food'],
        rating: restaurantData['rating']);
  }

  //Convert the food model to a Map
  Map<String, dynamic?> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'food': food,
      'rating': rating,
    };
  }
}
