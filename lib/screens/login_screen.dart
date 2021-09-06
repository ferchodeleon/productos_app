import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:products_app/providers/login_form-provider.dart';
import 'package:products_app/ui/input_decorations.dart';
import 'package:products_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

///Page login and validate email and password
class LoginScreen extends StatelessWidget {
  // ignore: public_member_api_docs
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 250.0),
            CardContainer(
              chill: Column(
                children: [
                  const SizedBox(height: 10.0),
                  Text('Login', style: Theme.of(context).textTheme.headline4),
                  const SizedBox(height: 30.0),
                  ChangeNotifierProvider(
                    create: (_) => LoginformProvider(),
                    child: _LoginForm(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Create account',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginformProvider>(context);
    return Form(
      key: loginForm.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              labelText: 'Email',
              hintText: 'email@gmail.com',
              prefixIcon: Icons.email,
            ),
            validator: (value) {
              const String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              final RegExp regExp = RegExp(pattern);

              return regExp.hasMatch(value ?? '') ? null : 'Email incorrect';
            },
            onChanged: (valueEmail) => loginForm.email = valueEmail,
          ),
          const SizedBox(height: 30.0),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              labelText: 'Password',
              hintText: '',
              prefixIcon: Icons.lock_outline,
            ),
            validator: (value) {
              return (value != null && value.length >= 6)
                  ? null
                  : 'The password most be higher of 6 character';
            },
            onChanged: (valuePassword) => loginForm.password = valuePassword,
          ),
          const SizedBox(height: 30.0),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            disabledColor: Colors.grey,
            color: Colors.deepPurple,
            elevation: 10.0,
            onPressed: loginForm.isLoading
                ? null
                : () async {
                    FocusScope.of(context).unfocus();
                    if (!loginForm.isValidForm()) return;
                    loginForm.isLoading = true;

                    await Future.delayed(const Duration(seconds: 2));

                    loginForm.isLoading = false;

                    Navigator.pushReplacementNamed(context, 'home');
                  },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text(
                loginForm.isLoading ? 'Loading..' : 'Save',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
