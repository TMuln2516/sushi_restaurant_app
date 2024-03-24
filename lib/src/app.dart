import 'package:flutter/material.dart';
import 'package:sushi_restaurant_app/src/resources/cart_page.dart';
import 'package:sushi_restaurant_app/src/resources/getstarted_page.dart';
import 'package:sushi_restaurant_app/src/resources/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStartedPage(),
      routes: {
        '/intropage': (context) => const GetStartedPage(),
        '/homepage': (context) => const HomePage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
