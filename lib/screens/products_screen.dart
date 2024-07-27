import 'package:fashions/screens/search_screen.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Custom behavior for the back button
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
                            builder: (context) => const SearchScreen()),
                      );
                    },
                    child: const Icon(Icons.search_rounded)));
          })
        ],
      ),
    );
  }
}
