import 'package:fashions/data/categories_data.dart';
import 'package:fashions/screens/cart_screen.dart';
import 'package:fashions/screens/categories_screen.dart';
import 'package:fashions/screens/notification_screen.dart';
import 'package:fashions/screens/profile_screen.dart';
import 'package:fashions/widgets/category_card.dart';
import 'package:fashions/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 191, 191, 191),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Categories',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: categoriesData.length,
              itemBuilder: (context, index) {
                return CategoryCard(
                  category: categoriesData[index],
                  categoryIndex: index,
                );
              },
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
