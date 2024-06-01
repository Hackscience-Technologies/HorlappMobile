import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hfoods/constants/dimensions.dart';
import 'package:hfoods/widgets/cart_item.dart';
import 'package:hfoods/widgets/long_button.dart';
import '../../models/cart_item.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<CartItemModel> cartItems = [
    CartItemModel(
      id: "0",
      image: 'assets/images/big_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      quantity: 3,
    ),
    CartItemModel(
      id: "1",
      image: 'assets/images/burger_king.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      quantity: 4,
    ),
    CartItemModel(
      id: "2",
      image: 'assets/images/little_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      quantity: 6,
    ),
    CartItemModel(
      id: "3",
      image: 'assets/images/sliced_burger.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
      quantity: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return CartItem(
                    cartItem: cartItems[index],
                    onIncrease: () => _increaseQuantity(index),
                    onDecrease: () => _decreaseQuantity(index),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemCount: cartItems.length),
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Subtotal',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant),
                ),
                Text(
                  '\$ 54.76',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tax(2%)',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant),
                ),
                Text(
                  '-\$ 1.08',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  '\$ 54.76',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                decoration: ShapeDecoration(
                  shape: const StadiumBorder(),
                  color: Theme.of(context).colorScheme.errorContainer,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Apply Promotion Code',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '2 Promos',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kVerticalPadding,
              horizontal: kHorizontalPadding,
            ),
            child: SizedBox(
              width: defaultWidth,
              child: LongButton(
                title: Text(
                  'Confirm',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: kSizedBoxHeight,
          ),
        ],
      )),
    );
  }

  void _increaseQuantity(int index) {}

  void _decreaseQuantity(int index) {}
}
