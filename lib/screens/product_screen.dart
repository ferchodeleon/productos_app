import 'package:flutter/material.dart';
import 'package:products_app/widgets/widgets.dart';

///Screen product details
class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ProductImage(),
            ],
          ),
        ],
      ),
    ));
  }
}
