import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;
import 'package:simplemobapp/navbar.dart';

class Formulir extends StatefulWidget {
  Formulir({super.key});

  @override
  State<Formulir> createState() => _FormulirState();
}

class _FormulirState extends State<Formulir> {
  String? _jk = "";

  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllernim = TextEditingController();

  void _jeniskelamin(String? value) {
    setState(() {
      _jk = value;
    });
  }

  void submit() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 200,
            child: Column(
              children: [
                Text("Nama Lengkap : ${controllerNama.text}"),
                SizedBox(
                  height: 20,
                ),
                Text("NIM : ${controllernim.text}"),
                SizedBox(
                  height: 20,
                ),
                Text("Jenis Kelamin : $_jk"),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: controllerNama,
                  decoration: InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: controllernim,
                  decoration: InputDecoration(
                      hintText: "NIM ",
                      labelText: "NIM",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text("Jenis Kelamin", style: TextStyle(fontSize: 20)),
                  ],
                ),
                RadioListTile(
                  value: "Laki - Laki",
                  title: Text("Laki - Laki"),
                  groupValue: _jk,
                  onChanged: (String? value) {
                    _jeniskelamin(value);
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: "Perempuan",
                  title: Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String? value) {
                    _jeniskelamin(value);
                  },
                  activeColor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    submit();
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
