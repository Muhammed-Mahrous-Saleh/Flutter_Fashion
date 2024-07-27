import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> _categoriesDataList = [
  {
    "iconData": FontAwesomeIcons.cartArrowDown,
    "title": "New Arrivals",
    "products": [
      Product(
        image: "",
        name: "Product 1",
        description: "product 1 description",
        price: 50.0,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.shirt,
    "title": "Clothes",
    "products": [
      Product(
        image: "",
        name: "Product 2",
        description: "product 2 description",
        price: 55.0,
      ),
      Product(
        image: "",
        name: "Product 2",
        description: "product 2 description",
        price: 55.0,
      )
    ]
  },
  {
    "iconData": FontAwesomeIcons.bagShopping,
    "title": "Bags",
    "products": [
      Product(
        image: "",
        name: "Product 3",
        description: "product 3 description",
        price: 60.0,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.shoePrints,
    "title": "Shoes",
    "products": [
      Product(
        image: "",
        name: "Product 4",
        description: "product 4 description",
        price: 65.0,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.plug,
    "title": "Electronics",
    "products": [
      Product(
        image: "",
        name: "Product 5",
        description: "product 5 description",
        price: 70.0,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.solidGem,
    "title": "Jewelery",
    "products": [
      Product(
        image: "",
        name: "Product 6",
        description: "product 6 description",
        price: 75.0,
      ),
    ]
  },
];

// Convert List<Map> to List<Category>
List<Category> categoriesData =
    _categoriesDataList.map((map) => Category.fromMap(map)).toList();

class Category {
  final IconData iconData;
  final String title;
  final List<Product> products;

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
      products: (map['products'] as List)
          .map((product) => product as Product)
          .toList(),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      iconData: json['iconData'],
      title: json['title'],
      products: (json['products'] as List)
          .map((productJson) => Product.fromJson(productJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'iconData': iconData,
      'title': title,
      'products': products.map((product) => product.toJson()).toList(),
    };
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
      price: map['price'].toDouble(),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      image: json['image'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'description': description,
      'price': price,
    };
  }
}
