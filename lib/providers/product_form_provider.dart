import 'package:flutter/material.dart';

import '../models/models.dart';

///
class ProductFormProvider extends ChangeNotifier {
  // ignore: public_member_api_docs
  ProductFormProvider(this.product);

  // ignore: public_member_api_docs
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // ignore: public_member_api_docs
  Product product;

  /// Method to change visual button switch
  void updateAvailability(bool value) {
    product.available = value;
    notifyListeners();
  }

  ///Validate form product screen
  bool isValidform() {
    return formKey.currentState?.validate() ?? false;
  }
}
