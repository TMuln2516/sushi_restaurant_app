import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/src/components/foodtile.dart';
import 'package:sushi_restaurant_app/src/components/mybutton.dart';
import 'package:sushi_restaurant_app/src/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List foodMenu = [
    Food(
        name: "Chirashi sushi",
        price: "21.00",
        imagePath: "assets/images/chirashi.png",
        rate: "4.9"),
    Food(
        name: "Nigiri sushi",
        price: "25.00",
        imagePath: "assets/images/nigiri.png",
        rate: "4.9"),
    Food(
        name: "Salmon sushi",
        price: "21.00",
        imagePath: "assets/images/salmon.png",
        rate: "4.9")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCDBDC),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        title: const Text(
          "MENU",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: const Color(0xFF803332),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyButton(text: "Redeem", onTap: () {})
                  ],
                ),
                Image.asset(
                  "assets/images/sushi1.png",
                  height: 100,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here...",
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/nigiri.png",
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nigiri Sushi",
                        style: GoogleFonts.dmSerifDisplay(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$25.00",
                        style: GoogleFonts.dmSerifDisplay(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
