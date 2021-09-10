import 'package:flutter/material.dart';
import 'package:products_app/widgets/widgets.dart';

/// Screen Home after the Login
class HomeScreen extends StatelessWidget {
  // ignore: public_member_api_docs
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'productScreen'),
          child: ProductCard(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
