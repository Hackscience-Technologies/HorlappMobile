import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/dimensions.dart';
import '../../models/order_item.dart';
import '../../widgets/order_card.dart';
import '../map/map_page.dart';

class AllOrderPage extends StatefulWidget {
  const AllOrderPage({super.key});

  @override
  State<AllOrderPage> createState() => _AllOrderPageState();
}

class _AllOrderPageState extends State<AllOrderPage> {
  List<OrderItemModel> allOrdersItem = [
    OrderItemModel(
      id: "0",
      image: 'assets/images/big_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
    ),
    OrderItemModel(
      id: "1",
      image: 'assets/images/burger_king.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
    ),
    OrderItemModel(
      id: "2",
      image: 'assets/images/little_mac.webp',
      title: "Lorem ipsum dolor sit amet",
      price: "\$ 10.90",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: kSizedBoxHeight * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Text(
            'Order ID #0012345',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Row(
                children: [
                  Icon(Icons.circle),
                  SizedBox(
                    width: kSizedBoxWidth / 2,
                  ),
                  Text('ON DELIVERY'),
                ],
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => const MapPage());
                },
                child: const Text("Track Location"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: kSizedBoxHeight * 2,
        ),
        Column(
            children: allOrdersItem
                .map((orderItem) => OrderCard(orderItems: orderItem))
                .toList()),
        const Divider(
          thickness: kDividerThickness,
        ),
        const SizedBox(
          height: kSizedBoxHeight * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Text(
            'Order ID #0012345',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Row(
                children: [
                  Text('DONE'),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(""),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: kSizedBoxHeight * 2,
        ),
        Column(
            children: allOrdersItem
                .map((orderItem) => OrderCard(orderItems: orderItem))
                .toList()),
      ],
    );
  }
}
