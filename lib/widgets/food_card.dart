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
    final double defaultWidth = MediaQuery.of(context).size.width;
    final double defaultHeight = MediaQuery.of(context).size.height;

    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      child: SizedBox(
        width: defaultWidth * 0.5,
        height: defaultHeight * 0.9,
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
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Hero(
                      tag: food.id.toString(),
                      child: Image.asset(
                        food.image!,
                        cacheWidth: imageCacheWidth,
                        width: defaultWidth,
                        height: defaultHeight * 0.15,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
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
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        food.title!,
                        softWrap: true,
                        style: textTheme.bodyMedium?.copyWith(
                          color:colorScheme.onPrimary
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kSizedBoxHeight * 0.5,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange.shade300,
                                size: 20,
                              ),
                              const SizedBox(
                                width: kSizedBoxWidth * 0.5,
                              ),
                              Text(
                                food.rating!,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary
                                          .withAlpha(100),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          food.price!,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary
                                        .withAlpha(100),
                                  ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () => {Get.to(() => FoodDetailsPage(food: food))},
    );
  }
}
