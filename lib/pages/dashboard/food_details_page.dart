import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hfoods/constants/dimensions.dart';
import 'package:hfoods/pages/dashboard/shopping_cart_page.dart';

import '../../models/food_model.dart';
import '../../widgets/long_button.dart';
import '../../widgets/quantity_manipulator.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  final bool _floatHeaderSlivers = false;

  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: _floatHeaderSlivers,
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: _pinned,
                snap: _snap,
                floating: _floating,
                expandedHeight: defaultHeight * 0.45,
                flexibleSpace: FlexibleSpaceBar(
                  background: SizedBox(
                    width: defaultWidth,
                    child: Hero(
                      tag: widget.food.id.toString(),
                      child: Image.asset(
                        widget.food.image!,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.low,
                      ),
                    ),
                  ),
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Colors.white.withAlpha(200),
                    ),
                    shape: const MaterialStatePropertyAll<CircleBorder>(
                      CircleBorder(),
                    ),
                  ),
                  onPressed: () => {Get.back()},
                ),
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              vertical: kVerticalPadding,
              horizontal: kHorizontalPadding,
            ),
            children: [
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              Text(
                'Lorem Ipsum',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Vivamus a porttitor urna. Nam in enim non sem placerat vestibulum.'
                'Vivamus a porttitor urna. Nam in enim non sem placerat vestibulum.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant,
                    ),
              ),
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange.shade300,
                        size: 25,
                      ),
                      const SizedBox(
                        width: kSizedBoxWidth * 0.5,
                      ),
                      Text(
                        widget.food.rating!,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_filled_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 25,
                      ),
                      const SizedBox(
                        width: kSizedBoxWidth * 0.5,
                      ),
                      Text(
                        '6-7 Min',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_shipping_rounded,
                        color: Colors.green.shade300,
                        size: 25,
                      ),
                      const SizedBox(
                        width: kSizedBoxWidth * 0.5,
                      ),
                      Text(
                        "FREE DELIVERY",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.green.shade300),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              Text(
                'Price',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outlineVariant,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.food.price!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600),
                  ),
                  QuantityManipulator(
                    quantity: _quantity,
                    onDecrease: _decreaseQuantity,
                    onIncrease: _increaseQuantity,
                  ),
                ],
              ),
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              const Divider(),
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: kVerticalPadding,
                      horizontal: kHorizontalPadding,
                    ),
                    decoration: ShapeDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      '20% OFF DISCOUNT',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onError,
                          ),
                    ),
                  ),
                  Text(
                    'Apply promo code',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: kSizedBoxHeight,
              ),
              SizedBox(
                width: defaultWidth,
                child: LongButton(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      const SizedBox(width: kSizedBoxWidth),
                      Text(
                        "Place Order",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ],
                  ),
                  onPressed: () {
                    _showAddedToCartDialog();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _increaseQuantity() {
    setState(() {
      _quantity += 1;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity != 1) {
        _quantity -= 1;
      }
    });
  }

  Future<void> _showAddedToCartDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Info'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Center(
                    child: Text(
                      'Your item has successfully added to the cart',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                child: const Text('Ok'),
              )
            ],
          );
        });
  }
}
