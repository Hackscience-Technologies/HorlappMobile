import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hfoods/pages/dashboard/restaurant_page.dart';
import 'package:hfoods/pages/restaurant/food_page.dart';

import '../constants/dimensions.dart';
import '../models/restaurant_model.dart';

class RestaurantCard extends StatelessWidget {

  final Restaurant restaurant;
  final int imageCacheWidth;

  const RestaurantCard({super.key, required this.restaurant, required this.imageCacheWidth});

  @override
  Widget build(BuildContext context) {
    final double defaultWidth = MediaQuery.of(context).size.width;
    final double defaultHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      child: SizedBox(
        width: defaultWidth * 0.5,
        height: defaultHeight * 0.9,
        child: Card(
          elevation: kElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kContainerRadius),
          ),
          color: Theme.of(context).colorScheme.tertiary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: 'restaurant ${restaurant.id.toString()}',
                  child: Image.asset(
                    restaurant.image!,
                    cacheWidth: imageCacheWidth,
                    width: defaultWidth,
                    height: defaultHeight * 0.15,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
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
                        restaurant.title!,
                        softWrap: true,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.background,
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
                                restaurant.rating!,
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
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () => {Get.to(() => FoodPage(restaurant: restaurant))},
    );
  }
}
