import 'package:flutter/material.dart';
import 'package:fashions/data/categories_data.dart';
import 'package:fashions/screens/notification_screen.dart';
import 'package:fashions/screens/profile_screen.dart';
import 'package:fashions/screens/search_screen.dart';
import 'package:fashions/widgets/bottom_navbar.dart';
import 'package:fashions/widgets/product_card.dart';
import 'package:fashions/screens/categories_screen.dart';
import 'package:fashions/screens/cart_screen.dart';

class ProductsScreen extends StatelessWidget {
  final int categoryIndex;
  const ProductsScreen({super.key, required this.categoryIndex});

  final int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    Categories(),
    CartScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index, context) {
    if (index == _selectedIndex) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _screens[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
                child: const Icon(Icons.search_rounded),
              ),
            );
          })
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              categoriesData[categoryIndex].title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemCount: categoriesData[categoryIndex].products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                      product: categoriesData[categoryIndex].products[index]);
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (int index) {
          _onItemTapped(index, context);
        },
      ),
    );
  }
}
