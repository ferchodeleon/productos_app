import 'package:flutter/material.dart';

import '../models/models.dart';

///
class ProductFormProvider extends ChangeNotifier {
  ProductFormProvider(this.product);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Product product;

  bool isValidform() {
    return formKey.currentState?.validate() ?? false;
  }
}
