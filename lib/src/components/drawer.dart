import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    void onMyCartTap() {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/cartpage');
    }

    return Drawer(
      backgroundColor: const Color(0xFF803332),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 100,
            ),
          ),
          ListTile(
            onTap: onMyCartTap,
            leading: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            title: const Text(
              "MY CART",
              style: TextStyle(color: Colors.white, letterSpacing: 8),
            ),
          )
        ],
      ),
    );
  }
}
