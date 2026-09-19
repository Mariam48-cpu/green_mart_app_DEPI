import 'package:flutter/material.dart';
import 'package:green_mart_app/core/widgets/bottom_nav_bar.dart';
import 'package:green_mart_app/features/cart/screens/cart_screen.dart';
import 'package:green_mart_app/features/shop/screens/explore_screen.dart';
import 'package:green_mart_app/features/shop/screens/favourite_screen.dart';
import 'package:green_mart_app/features/shop/screens/shop_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    const Center(child: Text('Account Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
