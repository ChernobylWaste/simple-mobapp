import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to calculator'),
          onPressed: () => Navigator.pushNamed(context, route.calculator),
          ),
      ),
    );
  }
}
