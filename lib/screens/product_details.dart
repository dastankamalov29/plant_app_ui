


import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/colors.dart';

import 'home_screen.dart';

class ProductDetail extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  const ProductDetail(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            bottomParts(context),
            // Hero(
            //   tag: "flower1",
            //   child: Image.asset("images/flower1.png"),
            // ),
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        right: 16,
                        left: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new_sharp,
                              size: 30,
                            ),
                          ),
                          Image.asset(
                            "images/filter icon.png",
                            height: 50,
                            width: 50,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        name,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          height: 1.01,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Stack(
                        children: [
                          Hero(
                            tag: "flower1",
                            child: Image.asset(
                              image,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 250),
                            child: Container(
                              height: 22,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 275),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 290),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 305),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 270,
              left: 32,
              child: Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Positioned(
              top: 150,
              right: 40,
              child: Icon(
                Icons.favorite,
                size: 32,
                color: primaryColor,
              ),
            ),
            Positioned(
              top: 430,
              right: 0,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                    color: primaryColor),
                child: Icon(
                  Icons.add_circle,
                  color: secondaryColor,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned bottomParts(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: primaryColor,
        child: const Padding(
          padding: EdgeInsets.only(top: 800, left: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "40cm - 50cm",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 25),
              Column(
                
                children: [
                  Text(
                    "Pot",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Self Watering Pot",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Temperature",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "18C - 25C",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
