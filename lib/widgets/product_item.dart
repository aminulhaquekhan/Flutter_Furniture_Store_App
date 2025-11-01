// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

import '../screens/details.dart';

class ProductItem extends StatelessWidget {
  final Map<String, dynamic> furniture;

  const ProductItem({super.key, required this.furniture}); // ✅ added required

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Details();
              },
            ),
          );
        },
        child: SizedBox(
          height: 140,
          width: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "${furniture["img"]}",
              height: 140,
              width: 140,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}