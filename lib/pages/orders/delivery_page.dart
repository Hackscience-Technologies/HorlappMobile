import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/dimensions.dart';
import '../../models/order_item.dart';
import '../../widgets/order_card.dart';
import '../map/map_page.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  List<OrderItemModel> onDeliveryItems = [
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
          children: onDeliveryItems
              .map((orderItem) => OrderCard(orderItems: orderItem))
              .toList(),
        ),
      ],
    );
  }
}
