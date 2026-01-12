import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final int price;
  final int stock;
  final int sold;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.stock,
    required this.sold,
  });
}
