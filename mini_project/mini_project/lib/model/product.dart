import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final String description;

  final int price; 
  final String size; 
  final int id;
  final Color color;

  Product({
  required this.id,
  required this.image,
  required this.title,
  required this.price,
  required this.description,
  required this.size,
  required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Air Jordan 1",
      price: 234,
      size: "40 - 45",
      description: dummyText,
      image: "assets/images/shoe_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Air Force",
      price: 234,
      size: "40 - 45",
      description: dummyText,
      image: "assets/images/shoe_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Nike Zoom 1",
      price: 234,
      size: "40 - 45",
      description: dummyText,
      image: "assets/images/shoe_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Air Jordan 11",
      price: 234,
      size: "40 - 45",
      description: dummyText,
      image: "assets/images/shoe_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Nike Zoom 2",
      price: 234,
      size: "40 - 45",
      description: dummyText,
      image: "assets/images/shoe_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Air Jordan 4",
    price: 234,
    size: "40 - 45",
    description: dummyText,
    image: "assets/images/shoe_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";