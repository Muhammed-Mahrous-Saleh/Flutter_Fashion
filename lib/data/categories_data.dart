import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> _categoriesDataList = [
  {
    "iconData": FontAwesomeIcons.cartArrowDown,
    "title": "New Arrivals",
    "products": [
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.shirt,
    "title": "Clothes",
    "products": [
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.bagShopping,
    "title": "Bags",
    "products": [
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.shoePrints,
    "title": "Shoes",
    "products": [
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.plug,
    "title": "Electronics",
    "products": [
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
    ]
  },
  {
    "iconData": FontAwesomeIcons.solidGem,
    "title": "Jewelery",
    "products": [
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Roller Rabbit',
        description: 'Vado Odelle Dress',
        price: 198.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'endless rose',
        description: 'Bubble Elastic T-shirt',
        price: 50.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Theory',
        description: 'Irregular Rib Skirt',
        price: 345.00,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
      ),
      Product(
        imageUrl: 'https://via.placeholder.com/150',
        name: 'Madewell',
        description: 'Giselle Top in White Linen',
        price: 69.50,
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
  final String imageUrl;
  final String name;
  final String description;
  final double price;

  Product({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
  });

  // Factory constructor to create a Product from a map
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      imageUrl: map['image'],
      name: map['name'],
      description: map['description'],
      price: map['price'].toDouble(),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      imageUrl: json['image'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': imageUrl,
      'name': name,
      'description': description,
      'price': price,
    };
  }
}
