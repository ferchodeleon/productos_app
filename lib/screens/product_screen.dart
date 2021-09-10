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
              Positioned(
                top: 60,
                left: 40,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
