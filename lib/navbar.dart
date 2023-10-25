import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Satria Winekas H'),
            accountEmail: Text('1101204298'),
            currentAccountPicture: CircleAvatar(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/minji.jpg'),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://as2.ftcdn.net/v2/jpg/05/84/95/67/1000_F_584956732_MF1UcyCgd3k560rUN1nsDbQaRpq4RMU8.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Kalkulator'),
            onTap: () => Navigator.pushNamed(context, route.calculator),
          ),
          ListTile(
            leading: Icon(Icons.forum_rounded),
            title: Text('Formulir'),
            onTap: () => Navigator.pushNamed(context, route.form),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => Navigator.pushNamed(context, route.loginpage),
          ),
        ],
      ),
    );
  }
}
