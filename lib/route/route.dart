import 'package:flutter/material.dart';

import 'package:simplemobapp/views/calculator.dart';
import 'package:simplemobapp/views/form.dart';
import 'package:simplemobapp/views/homepage.dart';
import 'package:simplemobapp/views/login.dart';

// Route Names
const String calculator = 'calculator';
const String loginpage = 'login';
const String form = 'form';
const String hp = 'homepage';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case calculator:
      return MaterialPageRoute(builder: (context) => Calculator());
    case loginpage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case form:
      return MaterialPageRoute(builder: (context) => Formulir());
    case hp:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      throw ('This route name does not exist');
  }
}
