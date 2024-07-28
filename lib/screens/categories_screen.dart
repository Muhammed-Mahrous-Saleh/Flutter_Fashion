import 'package:fashions/screens/notification_screen.dart';
import 'package:fashions/screens/profile_screen.dart';
import 'package:fashions/screens/signin.dart';
import 'package:fashions/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:fashions/data/categories_data.dart';
import 'package:fashions/screens/search_screen.dart';
import 'package:fashions/screens/cart_screen.dart';
import 'package:fashions/widgets/category_icon_card.dart';
import 'package:hive/hive.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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

  Future<bool> _checkLoginStatus() async {
    final sessionBox = Hive.box('session');
    final isLoggedIn = sessionBox.get('isLoggedIn', defaultValue: false);
    return isLoggedIn;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: _checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (!snapshot.data!) {
            Future.microtask(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Signin()),
              );
            });
            return Container();
          }
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
              height: MediaQuery.of(context).size.height - 165,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                            categoryIndex: i),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: (int index) {
                _onItemTapped(index, context);
              },
            ),
          );
        });
  }
}
