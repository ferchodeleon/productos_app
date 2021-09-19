import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:products_app/models/models.dart';
import 'package:http/http.dart' as http;

///Service to comunication with firebase
class ProductsService extends ChangeNotifier {
  ///Constructor of class, call to services API
  ProductsService() {
    loadProduct();
  }
  final String _baseUrl = 'flutter-varios-c7bc0.firebaseio.com';

  ///List of products requets of API
  final List<Product> products = [];

  /// In case
  bool isLoading = true;

  Future<List<Product>> loadProduct() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'products.json');
    final resp = await http.get(url);

    final Map<String, dynamic> productsMap =
        json.decode(resp.body) as Map<String, dynamic>;

    productsMap.forEach((key, value) {
      final tempProducts = Product.fromMap(value as Map<String, dynamic>);
      tempProducts.id = key;
      products.add(tempProducts);
    });

    // isLoading = false;
    notifyListeners();
    return this.products;
  }
}
