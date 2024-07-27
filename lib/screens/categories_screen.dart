import 'package:fashions/data/categories_data.dart';
import 'package:fashions/screens/search_screen.dart';
import 'package:fashions/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
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
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                    totalProducts: categoriesData[i].products,
                    categoryName: categoriesData[i].title,
                    fontIcon: categoriesData[i].iconData,
                  ),
              ],
            ),
          ),
        ));
  }
}
