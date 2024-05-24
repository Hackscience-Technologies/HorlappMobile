import 'package:flutter/material.dart';
import 'package:hfoods/constants/dimensions.dart';
import 'package:hfoods/models/restaurant_model.dart';
import 'package:hfoods/widgets/food_card.dart';
import 'package:hfoods/widgets/text_image_stack.dart';

import '../../models/food_model.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurants"),
        actions: [
          IconButton(
            icon: const Badge(
              label: Text('14'),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(itemBuilder: (BuildContext context, int index){
            return TextImageStack(restaurant: restaurants[index]);
        }, separatorBuilder: (BuildContext context, int index){
          return const SizedBox(height: kSizedBoxHeight,);
        }, itemCount: restaurants.length)
      ),
    );
  }
}
