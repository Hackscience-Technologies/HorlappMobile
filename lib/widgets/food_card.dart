import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hfoods/pages/dashboard/shopping_cart_page.dart';

import '../constants/dimensions.dart';
import '../models/food_model.dart';
import '../pages/dashboard/food_details_page.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  final int imageCacheWidth;

  const FoodCard(
      {super.key, required this.food, required this.imageCacheWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: kElevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kContainerRadius),
        ),
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        food.image!,
                        cacheWidth: imageCacheWidth,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.white.withAlpha(200),
                          ),
                          shape: const MaterialStatePropertyAll<CircleBorder>(
                            CircleBorder(),
                          ),
                        ),
                        onPressed: () => {Get.to(() => const ShoppingCartPage())},
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(
                    food.title!,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => {Get.to(() => const FoodDetailsPage())},
    );
  }
}
