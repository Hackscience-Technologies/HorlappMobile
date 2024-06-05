import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/dimensions.dart';
import '../models/food_model.dart';
import '../pages/dashboard/food_details_page.dart';

class FoodListView extends StatelessWidget {
  final Food food;

  const FoodListView({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    double defaultHeight = MediaQuery.of(context).size.height;
    double defaultWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Get.to(() => FoodDetailsPage(food: food));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
          vertical: kVerticalPadding,
        ),
        height: defaultHeight * 0.13,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    maxLines: 1,
                    food.title!,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                    softWrap: true,
                  ),
                  Text(
                    'Lorem, ipsum',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant
                              .withAlpha(100),
                        ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.price!,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSurfaceVariant,
                                ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 16.0,
                          ),
                          const SizedBox(
                            width: kSizedBoxWidth * 0.2,
                          ),
                          Text(
                            food.rating!,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: kSizedBoxWidth,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                food.image!,
                width: 80,
                height: 80,
                cacheWidth: 80,
                cacheHeight: 80,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
