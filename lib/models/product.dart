import 'dart:convert';

// ignore: public_member_api_docs
class Product {
  // ignore: public_member_api_docs
  Product({
    required this.available,
    required this.name,
    this.picture,
    required this.price,
  });

  // ignore: public_member_api_docs
  bool available;
  // ignore: public_member_api_docs
  String name;
  // ignore: public_member_api_docs
  String? picture;
  // ignore: public_member_api_docs
  double price;

  ///
  String? id;

  factory Product.fromJson(String str) =>
      Product.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        available: json['available'] as bool,
        name: json['name'] as String,
        picture: json['picture'] as String,
        price: json['price'] as double,
      );

  // ignore: public_member_api_docs
  Map<String, dynamic> toMap() => {
        // ignore: prefer_single_quotes
        "available": available,
        // ignore: prefer_single_quotes
        "name": name,
        // ignore: prefer_single_quotes
        "picture": picture,
        // ignore: prefer_single_quotes
        "price": price,
      };
}
