import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/product.dart';

import '../utils/colors.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar(),
              bodyPart(size, context),
            ],
          ),
          const Positioned(
            top: 135,
            left: 28,
            child: Text(
              "Plants",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const Positioned(
            top: 45,
            right: 29,
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }

  Container bodyPart(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen1(),
                  ),
                );
              },
              child: const Hero(
                tag: "flower1",
                child: Product(
                    name: "House shape close",
                    price: "45",
                    image: "images/flower1.png"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen2(),
                  ),
                );
              },
              child: const Hero(
                tag: "flower2",
                child: Product(
                    name: "Glass Water",
                    price: "45",
                    image: "images/flower2.png"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 38),
              child: Image.asset(
                "images/more icon.png",
                width: 60,
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Green",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "Shape Class",
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Indore plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Indore plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 110,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: primaryColor),
                width: 60,
                height: 70,
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
