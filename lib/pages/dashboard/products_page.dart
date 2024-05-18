import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hfoods/widgets/food_list_view.dart';

import '../../constants/dimensions.dart';
import '../../widgets/search_anchor_widget.dart';

class ProductsPage extends StatefulWidget {
  final int categoryId;

  const ProductsPage({super.key, required this.categoryId});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<Map<String, dynamic>> _categories = [
    {
      "id": 0,
      "title": "Food",
      "icon": Icon(
        Icons.lunch_dining,
        color: Colors.grey.shade200,
      ),
      "background": Colors.lightBlue,
    },
    {
      "id": 1,
      "title": "Drink",
      "icon": Icon(
        Icons.coffee,
        color: Colors.grey.shade200,
      ),
      "background": Colors.deepOrangeAccent,
    },
    {
      "id": 2,
      "title": "Snack",
      "icon": Icon(
        Icons.icecream,
        color: Colors.grey.shade200,
      ),
      "background": Colors.green.shade400,
    },
    {
      "id": 3,
      "title": "Dessert",
      "icon": Icon(
        Icons.cake,
        color: Colors.grey.shade200,
      ),
      "background": Colors.deepPurpleAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double defaultHeight = MediaQuery.of(context).size.height;
    double defaultWidth = MediaQuery.of(context).size.width;
    final int imageCacheWidth = (defaultWidth * 2).floor();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          IconButton(
            icon: const Badge(
              label: Text('14'),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: kVerticalPadding),
          children: [
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            SearchFieldAnchor(
              height: defaultHeight * 0.06,
              hintText: "Search beverages or food",
            ),
            const SizedBox(
              height: kSizedBoxHeight,
            ),
            SizedBox(
              height: defaultHeight * 0.09,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding,
                  horizontal: kHorizontalPadding,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final category = _categories[index];
                  return SizedBox(
                    width: defaultWidth * 0.33,
                    child: TextButton(
                      style: ButtonStyle(
                        shape: const MaterialStatePropertyAll<StadiumBorder>(
                          StadiumBorder(),
                        ),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          category['background'],
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          category['icon'],
                          Text(
                            category['title'],
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: kSizedBoxWidth,
                  );
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kSizedBoxHeight * 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                    vertical: kVerticalPadding,
                  ),
                  child: Text(
                    "Expression & Classic",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color:
                          Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                  ),
                ),
                const SizedBox(
                  height: kSizedBoxHeight * 2,
                ),
                const FoodListView(),
                Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                const FoodListView(),
                Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                const FoodListView(),
                Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                const FoodListView(),
              ],
            ),
            Divider(
              color: Theme.of(context).colorScheme.secondaryContainer,
              thickness: kDividerThickness,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kSizedBoxHeight*2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                    vertical: kVerticalPadding,
                  ),
                  child: Text(
                    "Cold Brew",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color:
                      Theme.of(context)
                          .colorScheme
                          .onSecondaryContainer,
                    ),
                  ),
                ),
                const SizedBox(
                  height: kSizedBoxHeight * 2,
                ),
                const FoodListView(),
                Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                const FoodListView(),
                Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                const FoodListView(),
                Divider(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                const FoodListView(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
