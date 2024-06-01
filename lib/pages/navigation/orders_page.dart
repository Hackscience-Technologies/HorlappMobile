import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hfoods/constants/dimensions.dart';
import 'package:hfoods/pages/orders/all_order_page.dart';
import 'package:hfoods/pages/orders/delivery_done_page.dart';
import 'package:hfoods/pages/orders/delivery_page.dart';
import '../../widgets/search_anchor_widget.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double defaultHeight = MediaQuery.of(context).size.height;
    double defaultWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: defaultHeight *  0.2,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 1, // Spread radius
                    blurRadius: 2, // Blur radius
                    offset: const Offset(0, 3), // Offset in x and y directions
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: kSizedBoxHeight,
                  ),
                  SearchFieldAnchor(
                    height: defaultHeight * 0.06,
                    hintText: "Search order",
                  ),
                  const SizedBox(
                    height: kSizedBoxHeight,
                  ),
                  SizedBox(
                    height: defaultHeight * 0.07,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                        vertical: kVerticalPadding,
                        horizontal: kHorizontalPadding,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: defaultWidth * 0.33,
                          child: TextButton(
                            style: ButtonStyle(
                              shape:
                                  const MaterialStatePropertyAll<StadiumBorder>(
                                StadiumBorder(),
                              ),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Theme.of(context).colorScheme.secondaryContainer,
                              ),
                            ),
                            onPressed: () {
                              _updateCurrentPageIndex(0);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "All",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: kSizedBoxWidth,
                        ),
                        SizedBox(
                          width: defaultWidth * 0.33,
                          child: TextButton(
                            style: ButtonStyle(
                              shape:
                                  const MaterialStatePropertyAll<StadiumBorder>(
                                StadiumBorder(),
                              ),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Theme.of(context).colorScheme.secondaryContainer,
                              ),
                            ),
                            onPressed: () {
                              _updateCurrentPageIndex(1);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "On Delivery",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: kSizedBoxWidth,
                        ),
                        SizedBox(
                          width: defaultWidth * 0.33,
                          child: TextButton(
                            style: ButtonStyle(
                              shape:
                                  const MaterialStatePropertyAll<StadiumBorder>(
                                StadiumBorder(),
                              ),
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Theme.of(context).colorScheme.secondaryContainer,
                              ),
                            ),
                            onPressed: () {
                              _updateCurrentPageIndex(2);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Completed",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageViewController,
                onPageChanged: _handlePageViewChanged,
                children: const [
                  AllOrderPage(),
                  DeliveryPage(),
                  DeliveryDonePage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
