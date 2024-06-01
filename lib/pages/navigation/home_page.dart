import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hfoods/pages/dashboard/products_page.dart';
import 'package:hfoods/pages/dashboard/shopping_cart_page.dart';
import 'package:hfoods/widgets/restaurant_card.dart';
import 'package:hfoods/widgets/search_anchor_widget.dart';
import 'package:hfoods/widgets/text_image_stack.dart';
import '../../constants/dimensions.dart';
import '../../models/food_model.dart';
import '../../models/restaurant_model.dart';
import '../../widgets/food_card.dart';
import '../../widgets/page_view_widget.dart';
import '../dashboard/restaurant_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> categories = [
    {
      "id": 0,
      "title": const Text("Food"),
      "icon": Icon(
        Icons.lunch_dining,
        color: Colors.grey.shade200,
      ),
      "background": Colors.lightBlue,
    },
    {
      "id": 1,
      "title": const Text("Drink"),
      "icon": Icon(
        Icons.coffee,
        color: Colors.grey.shade200,
      ),
      "background": Colors.deepOrangeAccent,
    },
    {
      "id": 2,
      "title": const Text("Snack"),
      "icon": Icon(
        Icons.icecream,
        color: Colors.grey.shade200,
      ),
      "background": Colors.green.shade400,
    },
    {
      "id": 3,
      "title": const Text("Dessert"),
      "icon": Icon(
        Icons.cake,
        color: Colors.grey.shade200,
      ),
      "background": Colors.deepPurpleAccent,
    },
  ];

  final List<Food> foods = [
    Food(
      id: "0",
      image: 'assets/images/yam_chips.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      rating: "4.6",
    ),
    Food(
      id: "1",
      image: 'assets/images/big_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      rating: "4.6",
    ),
    Food(
      id: "2",
      image: 'assets/images/burger_king.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      rating: "4.6",
    ),
    Food(
      id: "3",
      image: 'assets/images/little_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      rating: "4.6",
    ),
    Food(
      id: "4",
      image: 'assets/images/sliced_burger.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      rating: "4.6",
    ),
  ];

  final List<Restaurant> restaurants = [
    Restaurant(
      id: "0",
      image: 'assets/images/yam_chips.webp',
      title: "Lorem ipsum dolor sit amet",
      food: [
        Food(
          id: "0",
          image: 'assets/images/big_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "1",
          image: 'assets/images/burger_king.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "2",
          image: 'assets/images/little_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "3",
          image: 'assets/images/sliced_burger.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
      ],
      rating: "4.6",
    ),
    Restaurant(
      id: "1",
      image: 'assets/images/burger_king.webp',
      title: "Lorem ipsum dolor sit amet",
      food: [
        Food(
          id: "0",
          image: 'assets/images/big_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "1",
          image: 'assets/images/burger_king.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "2",
          image: 'assets/images/little_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "3",
          image: 'assets/images/sliced_burger.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
      ],
      rating: "4.6",
    ),
    Restaurant(
      id: "2",
      image: 'assets/images/little_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      food: [
        Food(
          id: "0",
          image: 'assets/images/big_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "1",
          image: 'assets/images/burger_king.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "2",
          image: 'assets/images/little_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "3",
          image: 'assets/images/sliced_burger.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
      ],
      rating: "4.6",
    ),
    Restaurant(
      id: "3",
      image: 'assets/images/sliced_burger.webp',
      title: "Lorem ipsum dolor sit amet",
      food: [
        Food(
          id: "0",
          image: 'assets/images/big_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "1",
          image: 'assets/images/burger_king.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "2",
          image: 'assets/images/little_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "3",
          image: 'assets/images/sliced_burger.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
      ],
      rating: "4.6",
    ),
    Restaurant(
      id: "4",
      image: 'assets/images/big_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      food: [
        Food(
          id: "0",
          image: 'assets/images/big_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "1",
          image: 'assets/images/burger_king.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "2",
          image: 'assets/images/little_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "3",
          image: 'assets/images/sliced_burger.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
      ],
      rating: "4.6",
    ),
    Restaurant(
      id: "5",
      image: 'assets/images/yam_chips.webp',
      title: "Lorem ipsum dolor sit amet",
      food: [
        Food(
          id: "0",
          image: 'assets/images/big_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "1",
          image: 'assets/images/burger_king.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "2",
          image: 'assets/images/little_mac.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
        Food(
          id: "3",
          image: 'assets/images/sliced_burger.webp',
          title: "Lorem ipsum dolor sit amet",
          price: "\$ 10.90",
          rating: "4.6",
        ),
      ],
      rating: "4.6",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double defaultWidth = MediaQuery.of(context).size.width;
    final double defaultHeight = MediaQuery.of(context).size.height;
    final int imageCacheWidth = (defaultWidth * 2).floor();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            ListTile(
              title: const Text('Good Morning'),
              titleTextStyle: Theme.of(context).textTheme.bodyMedium,
              subtitle: const Text('Enoch 👋'),
              subtitleTextStyle: Theme.of(context).textTheme.headlineSmall,
              trailing: IconButton(
                onPressed: () {
                  Get.to(()=>const ShoppingCartPage());
                },
                icon: const Badge(
                  label: Text('14'),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            SearchFieldAnchor(
              height: defaultHeight * 0.06,
              hintText: "Search Restaurants and Meals",
            ),
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            SizedBox(
              width: defaultWidth,
              height: defaultHeight / 7,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: categories.map((category) {
                  return SizedBox(
                    width: defaultWidth * 0.20,
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(
                            () => ProductsPage(categoryId: category['id']));
                      },
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(vertical: kVerticalPadding)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundColor: category["background"],
                            radius: 25,
                            child: category["icon"],
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          category["title"],
                          const SizedBox(
                            height: kSizedBoxHeight,
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding, horizontal: kHorizontalPadding),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recommended'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'View More',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: defaultWidth / 2,
              height: defaultHeight / 3.5,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: foods.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                    vertical: kVerticalPadding,
                    horizontal: kHorizontalPadding),
                itemBuilder: (context, index) {
                  final food = foods[index];
                  return FoodCard(
                    food: food,
                    imageCacheWidth: imageCacheWidth,
                  );
                },
              ),
            ),
            PageViewWidget(
              defaultWidth: defaultWidth,
              defaultHeight: defaultHeight,
              title: '',
              linkTitle: '',
              onTap: () {},
              items: foods,
              itemBuilder: (context, index) {
                final food = foods[index];
                return Center(
                  child: Container(
                    width: defaultWidth,
                    height: defaultHeight,
                    margin: const EdgeInsets.symmetric(
                      horizontal: kHorizontalMargin,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        food.image!,
                        cacheWidth: imageCacheWidth,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: kSizedBoxHeight * 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding, horizontal: kHorizontalPadding),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Restaurants'),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const RestaurantPage());
                    },
                    child: const Text(
                      'View More',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: defaultWidth / 2,
              height: defaultHeight / 3.5,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: restaurants.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                    vertical: kVerticalPadding,
                    horizontal: kHorizontalPadding),
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index];
                  return RestaurantCard(
                    restaurant: restaurant,
                    imageCacheWidth: imageCacheWidth,
                  );
                },
              ),
            ),
            const SizedBox(
              height: kSizedBoxHeight,
            ),
          ],
        ),
      ),
    );
  }
}
