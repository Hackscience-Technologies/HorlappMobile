import 'package:flutter/material.dart';
import 'package:hfoods/pages/navigation/account_page.dart';
import 'package:hfoods/pages/notifications/notifications_page.dart';
import 'package:hfoods/pages/navigation/orders_page.dart';

import 'home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentPageIndex = 0;

  final List<NavigationDestination> _navigationDestinationItems = [
    const NavigationDestination(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const NavigationDestination(
      icon: Icon(Icons.notifications),
      label: "Notifications",
    ),
    const NavigationDestination(
      icon: Icon(Icons.receipt_long),
      label: "Orders",
    ),
    const NavigationDestination(
      icon: Icon(Icons.person),
      label: "Account",
    ),
  ];

  final List<Widget> _pages = [
    const HomePage(),
    const NotificationsPage(),
    const OrdersPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: NavigationBar(
        elevation: 4,
        destinations: _navigationDestinationItems,
        selectedIndex: _currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
      body: _pages[_currentPageIndex],
    );
  }
}
