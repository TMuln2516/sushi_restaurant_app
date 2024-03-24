import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/src/components/button.dart';
import 'package:sushi_restaurant_app/src/models/food.dart';
import 'package:sushi_restaurant_app/src/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: const Color(0xFF803332),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFF803332),
          centerTitle: true,
          title: const Text(
            "MY CART",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.customerCart.length,
                itemBuilder: (context, index) {
                  // get food from cart
                  final Food food = value.customerCart[index];

                  //Food name
                  final String foodName = food.name;
                  final String foodPrice = food.price;
                  final String foodImage = food.imagePath;
                  return Container(
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 134, 80, 80),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      leading: Image.asset(foodImage),
                      title: Text(
                        foodName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(foodPrice),
                      trailing: IconButton(
                          onPressed: () => removeFromCart(food, context),
                          icon: const Icon(Icons.delete)),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: MyButton(text: "Pay Now", onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
