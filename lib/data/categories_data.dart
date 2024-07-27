import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> _categoriesData = [
  {
    "iconData": FontAwesomeIcons.cartArrowDown,
    "title": "New Arrivals",
    "products": 208
  },
  {"iconData": FontAwesomeIcons.shirt, "title": "Clothes", "products": 358},
  {"iconData": FontAwesomeIcons.bagShopping, "title": "Bags", "products": 160},
  {"iconData": FontAwesomeIcons.shoePrints, "title": "Shoes", "products": 230},
  {"iconData": FontAwesomeIcons.plug, "title": "Electronics", "products": 130},
  {"iconData": FontAwesomeIcons.solidGem, "title": "Jewelery", "products": 87},
];

// Convert List<Map> to List<Category>
List<Category> categoriesData =
    _categoriesData.map((map) => Category.fromMap(map)).toList();

class Category {
  final IconData iconData;
  final String title;
  final int products;

  Category({
    required this.iconData,
    required this.title,
    required this.products,
  });

  // Factory constructor to create a Category from a map
  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      iconData: map['iconData'],
      title: map['title'],
      products: map['products'],
    );
  }
}

class Product {
  final String image;
  final String name;
  final String description;
  final double price;

  Product({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  // Factory constructor to create a Product from a map
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      image: map['image'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
    );
  }
}
