import 'package:flutter/material.dart';
// import 'package:simplemobapp/route/route.dart' as route;
import 'package:simplemobapp/navbar.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //Inisialisasi Calculator
  String out = '';
  String out_angka = '0';
  double num1 = 0;
  double num2 = 0;

  void button(String x) {
    setState(() {
      //mengubah properti apapun dari state
      if (x == '7') {
        out_angka = '7';
      } else if (x == '8') {
        out_angka = '8';
      } else if (x == '9') {
        out_angka = '9';
      } else if (x == '4') {
        out_angka = '4';
      } else if (x == '5') {
        out_angka = '5';
      } else if (x == '6') {
        out_angka = '6';
      } else if (x == '1') {
        out_angka = '1';
      } else if (x == '2') {
        out_angka = '2';
      } else if (x == '3') {
        out_angka = '3';
      } else if (x == '0') {
        out_angka = '0';
      } else if (x == 'C') {
        out_angka = '0';
      } else if (x == 'x') {
        num1 = double.parse(out_angka);
        out = x;
      } else if (x == '-') {
        num1 = double.parse(out_angka);
        out = x;
      } else if (x == '/') {
        num1 = double.parse(out_angka);
        out = x;
      } else if (x == '+') {
        num1 = double.parse(out_angka);
        out = x;
      } else if (x == '=') {
        num2 = double.parse(out_angka);

        if (out == '+') {
          out_angka = (num1 + num2).toString();
        } else if (out == "-") {
          out_angka = (num1 - num2).toString();
        } else if (out == "x") {
          out_angka = (num1 * num2).toString();
        } else if (out == "/") {
          out_angka = (num1 / num2).toString();
        }
      }
    });
  }

  Widget tombol(String x, Color y) {
    return SizedBox(
      width: 80,
      height: 70,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: y,
            shape: CircleBorder(),
            padding: EdgeInsets.all(24),
          ),
          onPressed: () => button(x),
          child: Text(
            x,
            style: TextStyle(fontSize: 15, color: Colors.amber),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.grey.shade800,
      //object yang berada di atas template/MaterialApp meliputi judul dan kontennya
      appBar: AppBar(
        title: const Text("Kalkulator Sederhana"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.rectangle,
              ),
              alignment: Alignment
                  .centerRight, //secara vertical di tengah dan horizontal di kanan
              child: Text(
                out_angka,
                style: TextStyle(
                    fontSize: 48.00,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tombol("7", Colors.grey.shade900),
                      tombol("8", Colors.grey.shade900),
                      tombol("9", Colors.grey.shade900),
                      tombol("x", Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tombol("4", Colors.grey.shade900),
                      tombol("5", Colors.grey.shade900),
                      tombol("6", Colors.grey.shade900),
                      tombol("-", Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tombol("1", Colors.grey.shade900),
                      tombol("2", Colors.grey.shade900),
                      tombol("3", Colors.grey.shade900),
                      tombol("+", Colors.white),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      tombol("C", Colors.orange.shade700),
                      tombol("0", Colors.grey.shade900),
                      tombol("=", Colors.white),
                      tombol("/", Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(color: Colors.teal.shade100),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "/");
                },
                child: Text("Home Page"))
          ],
        ),
      ),
    );
  }
}
