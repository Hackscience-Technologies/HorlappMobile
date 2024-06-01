import 'package:flutter/material.dart';
import 'package:hfoods/models/order_item.dart';

import '../constants/dimensions.dart';

class OrderCard extends StatelessWidget {
  final OrderItemModel orderItems;

  const OrderCard({super.key, required this.orderItems});

  @override
  Widget build(BuildContext context) {
    double defaultHeight = MediaQuery.of(context).size.height;
    double defaultWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
        vertical: kVerticalPadding,
      ),
      height: defaultHeight * 0.18,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  orderItems.image!,
                  width: 100,
                  height: 100,
                  cacheWidth: 100,
                  cacheHeight: 100,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: kSizedBoxWidth,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: defaultWidth * 0.4,
                      child: Text(
                        orderItems.title!,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer,
                                ),
                        softWrap: true,
                      ),
                    ),
                    const SizedBox(
                      height: kSizedBoxHeight,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          orderItems.price!,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
          const Divider()
        ],
      ),
    );
  }
}
