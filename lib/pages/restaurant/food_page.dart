import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../models/restaurant_model.dart';
import '../../widgets/food_list_view.dart';

class FoodPage extends StatefulWidget {
  final Restaurant restaurant;

  const FoodPage({super.key, required this.restaurant});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final bool _pinned = false;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    double defaultHeight = MediaQuery.of(context).size.height;
    double defaultWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: defaultHeight * 0.3,
              flexibleSpace: FlexibleSpaceBar(
                background: SizedBox(
                  width: defaultWidth,
                  child: Hero(
                    tag: 'restaurant ${widget.restaurant.id.toString()}',
                    child: Image.asset(
                      widget.restaurant.image!,
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
            ),
            SliverSafeArea(
              sliver: SliverList(
                delegate:
                    SliverChildBuilderDelegate((BuildContext context, int index) {
                  return Column(
                    children: [
                      FoodListView(food: widget.restaurant.food![index]),
                      Divider(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ],
                  );
                }, childCount: widget.restaurant.food!.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}
