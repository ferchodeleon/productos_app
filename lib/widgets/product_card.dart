import 'package:flutter/material.dart';

///Card products
class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.red,
        ),
        margin: const EdgeInsets.only(top: 30, bottom: 50),
        width: double.infinity,
        height: 400.0,
        child: const Center(
          child: Text(
            'Texto',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
