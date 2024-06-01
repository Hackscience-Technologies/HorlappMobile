import 'package:flutter/material.dart';
import 'package:hfoods/widgets/quantity_manipulator.dart';

import '../constants/dimensions.dart';
import '../models/cart_item.dart';

class CartItem extends StatelessWidget {
  final CartItemModel cartItem;
  final void Function()? onIncrease;
  final void Function()? onDecrease;

  const CartItem({
    super.key,
    required this.cartItem,
    this.onIncrease,
    this.onDecrease,
  });

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              cartItem.image!,
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
                    cartItem.title!,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                    softWrap: true,
                  ),
                ),
                Text(
                  'Lorem, ipsum',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                      ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cartItem.price!,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    QuantityManipulator(
                      quantity: cartItem.quantity!,
                      onDecrease: onDecrease,
                      onIncrease: onIncrease,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
