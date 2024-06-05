import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class QuantityManipulator extends StatelessWidget {

  final int quantity;
  final void Function()? onIncrease;
  final void Function()? onDecrease;

  const QuantityManipulator({super.key, required this.quantity, this.onIncrease, this.onDecrease});

  @override
  Widget build(BuildContext context) {

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.remove,
            color: colorScheme.onSecondaryContainer,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
              colorScheme.secondaryContainer,
            ),
            shape: const MaterialStatePropertyAll<CircleBorder>(
              CircleBorder(),
            ),
          ),
          onPressed: onDecrease,
        ),
        const SizedBox(
          width: kSizedBoxWidth,
        ),
        Text(
          quantity.toString(),
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          width: kSizedBoxWidth,
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: colorScheme.onSecondaryContainer,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
              colorScheme.secondaryContainer,
            ),
            shape: const MaterialStatePropertyAll<CircleBorder>(
              CircleBorder(),
            ),
          ),
          onPressed: onIncrease,
        ),
      ],
    );
  }
}
