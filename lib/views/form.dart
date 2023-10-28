import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simplemobapp/route/route.dart' as route;
import 'package:simplemobapp/navbar.dart';
import 'package:image_picker/image_picker.dart';

class Formulir extends StatefulWidget {
  Formulir({super.key});

  @override
  State<Formulir> createState() => _FormulirState();
}

class _FormulirState extends State<Formulir> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    if (imagePicked != null) {
      image = File(imagePicked.path);
      setState(() {});
    }
  }

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
                  height: 30,
                ),
                Text("NIM : ${controllernim.text}"),
                SizedBox(
                  height: 30,
                ),
                Text("Jenis Kelamin : $_jk"),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, route.hp);
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
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,

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
                Row(
                  children: [
                    Text("Upload Photo", style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    onPressed: () async {
                      await getImage();
                    },
                    child: Text(
                      "Open Image",
                      style: TextStyle(color: Colors.white),
                    )),
                image != null
                    ? Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Image.file(
                          image!,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(),
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
