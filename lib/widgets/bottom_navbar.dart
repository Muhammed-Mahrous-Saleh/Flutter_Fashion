import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedIndex == 0
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
          icon: selectedIndex == 1
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
          icon: selectedIndex == 2
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
                        'Notifications',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              : Icon(Icons.notifications),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
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
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
    );
  }
}
