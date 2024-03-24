import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/src/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Chirashi Sushi",
        price: "21.00",
        imagePath: "assets/images/chirashi.png",
        rate: "4.9",
        description:
            "Chirashi Sushi is a traditional Japanese sushi served on happy and celebratory occasions. It‘s a bright and festive dish of sushi rice mixed with seasoned vegetables and scattered with colorful toppings."),
    Food(
        name: "Nigiri Sushi",
        price: "25.00",
        imagePath: "assets/images/nigiri.png",
        rate: "4.9",
        description:
            "Nigiri sushi is a type of sushi composed of sushi rice – rice mixed with vinegar, sugar, and salt – and typically seafood. Atop a bite-sized portion of sushi rice, a thin slice of (often raw) fish or other seafood is placed. The topping is frequently affixed with the help of a dab of wasabi or strip of nori (seaweed)"),
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: "assets/images/salmon.png",
        rate: "4.9",
        description:
            "Salmon sushi is often eaten “nigiri” style, with a ball of vinegared sushi rice topped with a slice of salmon. It’s commonly enjoyed with wasabi and soy sauce, or salt and a bit of citrus. Although cooked salmon is known as “sake” (pronounced “sha-keh”) in Japanese")
  ];

  //customer Cart
  final List<Food> _customerCart = [];

  //getter
  List<Food> get foodMenu => _foodMenu;
  List<Food> get customerCart => _customerCart;

  // add to Cart
  void addToCart(Food food, int quantity) {
    for (int i = 0; i < quantity; i++) {
      customerCart.add(food);
    }
    notifyListeners();
  }

  // remove from Cart
  void removeFromCart(Food food) {
    customerCart.remove(food);
    notifyListeners();
  }
}
