import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Login Page'),
          onPressed: () => Navigator.pushNamed(context, route.loginpage),
          ),
      ),
    );
  }
}
