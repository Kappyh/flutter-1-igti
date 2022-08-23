import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  MyCalculator({Key? key}) : super(key: key);

  final TextEditingController _controle1 = TextEditingController();
  final TextEditingController _controle2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _controle1,
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('valor 1: ${_controle1.text} e valor 2: ${_controle2.text}');
                },
                child: const Text('+'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  controller: _controle2,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
