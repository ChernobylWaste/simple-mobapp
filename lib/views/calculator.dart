import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;


class Calculator extends StatelessWidget {
  Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to form'),
          onPressed: () => Navigator.pushNamed(context, route.form),
          ),
      ),
    );
  }
}
