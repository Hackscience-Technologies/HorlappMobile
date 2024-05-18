import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {

    double defaultHeight = MediaQuery.of(context).size.height;
    double defaultWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {},
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
                      'Lorem ipsum dolor sit amet',
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
                        '\$5.0',
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
                            '4.3',
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
                'assets/images/little_mac.webp',
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
