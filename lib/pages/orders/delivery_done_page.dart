import 'package:flutter/material.dart';

import '../../constants/dimensions.dart';
import '../../models/order_item.dart';
import '../../widgets/order_card.dart';

class DeliveryDonePage extends StatefulWidget {
  const DeliveryDonePage({super.key});

  @override
  State<DeliveryDonePage> createState() => _DeliveryDonePageState();
}

class _DeliveryDonePageState extends State<DeliveryDonePage> {
  List<OrderItemModel> deliveryDoneItems = [
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
          children: deliveryDoneItems
              .map((orderItem) => OrderCard(orderItems: orderItem))
              .toList(),
        ),
      ],
    );
  }
}
