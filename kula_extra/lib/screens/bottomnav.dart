import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kula_extra/screens/comment_screen.dart';
import 'package:kula_extra/screens/home_screen.dart';
import 'package:kula_extra/screens/orders_screen.dart';
import 'package:kula_extra/screens/subscription_screen.dart';
import 'package:kula_extra/screens/wallet_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});


  @override
  State<BottomNav> createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {
  int CurrentTabIndex=0;

  late List<Widget> screens;
  late Widget  currentScreen;
  late HomeScreen homeScreen;
  late WalletScreen walletScreen;
  late OrdersScreen ordersScreen;
  late Subscription subscription;
  late Comment commentScreen;
  
  @override
  void initState() {
    homeScreen=const HomeScreen();
    ordersScreen=const OrdersScreen();
    walletScreen=const WalletScreen();
    subscription=const Subscription();
    screens=[homeScreen, ordersScreen, subscription, walletScreen];
    super.initState();
  }


 @override
 Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: CurvedNavigationBar(
  height: 65,
  backgroundColor: Colors.black,
  color: Colors.white,
  animationDuration: const Duration(milliseconds: 500),
  onTap: (int index) {
    setState(() {
      CurrentTabIndex = index;
    });
  },
  items: const [
    Icon(
      Icons.home_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.shopping_bag_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.subscriptions,
      color: Colors.black,
    ),
    Icon(
      Icons.account_balance_wallet_outlined,
      color: Colors.black,
    ),
  ],
),

body: screens[CurrentTabIndex],
  );
 }
}