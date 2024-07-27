import 'package:fashions/screens/notification_screen.dart';
import 'package:fashions/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fashions/data/categories_data.dart';
import 'package:fashions/screens/search_screen.dart';
import 'package:fashions/screens/cart_screen.dart';
import 'package:fashions/widgets/category_card.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    Categories(),
    CartScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _screens[index]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
                textAlign: TextAlign.start,
              ),
              for (int i = 0; i < categoriesData.length; i++)
                CategoryCard(
                  totalProducts: categoriesData[i].products.length,
                  categoryName: categoriesData[i].title,
                  fontIcon: categoriesData[i].iconData,
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Container(
                    padding: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                : Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Container(
                    padding: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Cart',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                : Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Container(
                    padding: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Alerts',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                : Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Container(
                    padding: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                : Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Dummy Screens for navigation





