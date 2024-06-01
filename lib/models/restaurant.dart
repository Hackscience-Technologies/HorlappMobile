abstract class RestaurantBase {
  final String? id;
  final String? title;
  final String? image;

  RestaurantBase({this.id, this.title, this.image});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'image': image,
    };
  }
}
