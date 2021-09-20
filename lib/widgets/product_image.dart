import 'package:flutter/material.dart';

///Widget card image of products details
class ProductImage extends StatelessWidget {
  const ProductImage({this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Container(
        decoration: _buildBoxDecoration(),
        width: double.infinity,
        height: 450,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(45.0),
            topRight: Radius.circular(45.0),
          ),
          child: image == null
              ? Image.asset('assets/no-image.png', fit: BoxFit.contain)
              : FadeInImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(image!),
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(45.0),
          topRight: Radius.circular(45.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      );
}
