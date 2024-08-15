import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/product_details.dart';
import 'package:plant_app_ui/utils/colors.dart';

import 'home_screen.dart';

class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductDetail(
      name: "House Shape",
      image: "images/flower1.png",
      price: "\$45",
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductDetail(
      name: "Glass Water",
      image: "images/flower2.png",
      price: "\$45",
    );
  }
}
