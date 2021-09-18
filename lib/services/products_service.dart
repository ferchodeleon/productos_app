import 'package:flutter/material.dart';
import 'package:products_app/models/models.dart';

///Service to comunication with firebase
class Productservice extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-c7bc0.firebaseio.com';
  final List<Product> product = [];

  // TODO: hacer fetch de productos
}
