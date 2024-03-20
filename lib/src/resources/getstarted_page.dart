import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restaurant_app/src/components/mybutton.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7E342F),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SUSHI MAN",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset(
                  "assets/images/sushi.png",
                ),
              ),
              Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Feel the taste of the most popular Japanese food from anywhere and anytime",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                text: "Get Started",
              )
            ],
          ),
        ),
      ),
    );
  }
}
