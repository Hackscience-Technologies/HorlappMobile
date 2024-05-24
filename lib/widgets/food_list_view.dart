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
        height: defaultHeight * 0.15,
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
                  SizedBox(
                    width: defaultWidth * 0.4,
                    child: Text(
                      food.title!,
                      style:
                      Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondaryContainer,
                      ),
                      softWrap: true,
                    ),
                  ),
                  Text(
                    'Lorem, ipsum',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceVariant,
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.price!,
                        style:
                        Theme.of(context).textTheme.titleMedium,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
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
                                .titleMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onSecondaryContainer
                            ),
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
                width: 100,
                height: 100,
                cacheWidth: 100,
                cacheHeight: 100,
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
