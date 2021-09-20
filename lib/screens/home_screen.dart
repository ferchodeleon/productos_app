import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/services.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

/// Screen Home after the Login
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsServices = Provider.of<ProductsService>(context);

    if (productsServices.isLoading) {
      return LoadingScreen();
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Productos'),
        ),
        body: ListView.builder(
          itemCount: productsServices.products.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              productsServices.selectedProduct =
                  productsServices.products[index];
              Navigator.pushNamed(context, 'productScreen');
            },
            child: ProductCard(
              product: productsServices.products[index],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      );
    }
  }
}
