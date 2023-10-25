import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;

class Formulir extends StatelessWidget {
  Formulir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to login'),
          onPressed: () => Navigator.pushNamed(context, route.loginpage),
          ),
      ),
    );
  }
}
