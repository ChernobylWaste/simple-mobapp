import 'package:flutter/material.dart';
// import 'package:simplemobapp/route/route.dart' as route;
import 'package:simplemobapp/navbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        
      ),
    );
  }
}
