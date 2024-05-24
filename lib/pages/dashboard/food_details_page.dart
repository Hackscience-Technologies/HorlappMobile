import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hfoods/constants/dimensions.dart';

import '../../models/food_model.dart';
import '../../widgets/long_button.dart';

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


  final Color _backgroundColor = Colors.white.withAlpha(200);
  int _quantity = 1;


  @override
  Widget build(BuildContext context) {
    double defaultWidth = MediaQuery.of(context).size.width;
    double defaultHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: NestedScrollView(
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
                    _backgroundColor,
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
              'Vivamus a porttitor urna. Nam in enim non sem placerat vestibulum. '
              'Proin maximus faucibus ullamcorper. Suspendisse potenti. '
              'Proin efficitur nunc lectus, ac.',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
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
                Row(
                  children: [
                    IconButton(
                      splashColor: Theme.of(context).colorScheme.primaryContainer,
                      icon: const Icon(Icons.remove),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          _backgroundColor,
                        ),
                        shape: const MaterialStatePropertyAll<CircleBorder>(
                          CircleBorder(),
                        ),
                      ),
                      onPressed: _decreaseQuantity,
                    ),
                    const SizedBox(
                      width: kSizedBoxWidth,
                    ),
                    Text(
                      _quantity.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: kSizedBoxWidth,
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          _backgroundColor,
                        ),
                        shape: const MaterialStatePropertyAll<CircleBorder>(
                          CircleBorder(),
                        ),
                      ),
                      onPressed: _increaseQuantity,
                    ),
                  ],
                ),

              ],
            ),
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            SizedBox(
              width: defaultWidth,
              child: const LongButton(
                title: 'Place Order',
              ),
            ),
          ],
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
}
