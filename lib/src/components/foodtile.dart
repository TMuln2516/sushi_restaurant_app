import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/src/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  void Function()? onTap;
  FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                food.imagePath,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                food.name,
                style: GoogleFonts.dmSerifDisplay(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${food.price}",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 15),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                        ),
                        Text(
                          food.rate,
                          style: GoogleFonts.dmSerifDisplay(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
