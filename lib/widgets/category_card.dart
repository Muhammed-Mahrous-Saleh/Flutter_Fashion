import 'package:fashions/data/categories_data.dart';
import 'package:fashions/screens/products_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final int categoryIndex;

  const CategoryCard(
      {super.key, required this.category, required this.categoryIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProductsScreen(categoryIndex: categoryIndex)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        // onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) =>
        //                   ProductsScreen(categoryIndex: categoryIndex)));
        //     },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Image.asset(
                category.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '${category.products.length} Products',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
