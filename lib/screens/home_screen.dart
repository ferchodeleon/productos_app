import 'package:flutter/material.dart';

/// Screen Home after the Login
class HomeScreen extends StatelessWidget {
  // ignore: public_member_api_docs
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dataFormLogin = Provider.of<LoginformProvider>(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100.0,
          height: 100.0,
          child: Column(
            children: const [
              Text(
                'Email: ',
                style: TextStyle(color: Colors.black),
              ),
              Text('Password:'),
            ],
          ),
        ),
      ),
    );
  }
}
