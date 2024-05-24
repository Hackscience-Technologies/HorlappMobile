import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hfoods/models/restaurant_model.dart';
import 'package:hfoods/pages/restaurant/food_page.dart';

import '../constants/dimensions.dart';

class TextImageStack extends StatelessWidget {
  final Restaurant restaurant;

  const TextImageStack({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final double defaultWidth = MediaQuery.of(context).size.width;
    final double defaultHeight = MediaQuery.of(context).size.height;
    final TextStyle? kTitleStyle = Theme.of(context).textTheme.titleSmall;
    const double imageWidth = 100;
    const double imageHeight = 100;
    const int imageCacheWidth = 100;
    const int imageCacheHeight = 100;

    return GestureDetector(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            width: defaultWidth,
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Positioned(
                  right: 0,
                  child: SizedBox(
                    width: defaultWidth * 0.3,
                    height: defaultHeight * 0.12,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kContainerRadius),
                      child: Image.asset(
                        restaurant.image!,
                        width: imageWidth,
                        height: imageHeight,
                        cacheHeight: imageCacheHeight,
                        cacheWidth: imageCacheWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: defaultHeight * 0.13,
                  width: defaultWidth * 0.7,
                  child: Card(
                    elevation: kElevation,
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: kVerticalPadding,
                        horizontal: kHorizontalPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            restaurant.title!,
                            style: kTitleStyle,
                          ),
                          Text(
                            'Lorem',
                            style: kTitleStyle,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
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
                                        color:  Theme.of(context).colorScheme.error,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.favorite,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
        ],
      ),
      onTap: () {
        Get.to(() => FoodPage(restaurant: restaurant));
      },
    );
  }
}
