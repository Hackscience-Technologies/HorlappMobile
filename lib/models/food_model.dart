class Food {
  final String? id;
  final String? title;
  final String? image;
  final String? price;
  final String? rating;

  Food({this.id, this.title, this.image, this.price, this.rating});

  //Factory method to create a food model from a map
  factory Food.fromMap(Map<String, String> foodItem) {
    return Food(
        id: foodItem['id'],
        title: foodItem['title'],
        image: foodItem['image'],
        price: foodItem['price'],
        rating: foodItem['rating']);
  }

  //Convert the food model to a Map
  Map<String, String?> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'price': price,
      'rating': rating,
    };
  }
}
