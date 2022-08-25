import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
        ),
        body: Center(
          child: Calculadora(),
        ),
      ),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() {
    return _CalculadoraState();
  }
}

class _CalculadoraState extends State<Calculadora> {
  final TextEditingController _controle1 = TextEditingController();
  final TextEditingController _controle2 = TextEditingController();

  int? result;

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              enabled: true,
              fillColor: Colors.lightBlueAccent.shade100,
              labelText: 'Número',
              prefixIcon: Icon(Icons.favorite),
              labelStyle: TextStyle(color: Colors.black54),
              hintTextDirection: TextDirection.ltr,
              hintText: 'Dica de texto',
              helperText: 'Preencha o número',
              counterText: '100/200',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
            controller: _controle1,
            keyboardType: TextInputType.number,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            int numb1 = int.parse(_controle1.text);
            int numb2 = int.parse(_controle2.text);

            setState(() {
              result = numb1 + numb2;
            });

            print(result);
          },
          child: const Text('+'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              enabled: true,
              fillColor: Colors.lightBlueAccent.shade100,
              labelText: 'Número',
              prefixIcon: Icon(Icons.favorite),
              labelStyle: TextStyle(color: Colors.black54),
              hintTextDirection: TextDirection.ltr,
              hintText: 'Dica de texto',
              helperText: 'Preencha o número',
              counterText: '100/200',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
            controller: _controle2,
            keyboardType: TextInputType.number,
          ),
        ),
/*        Text(
            'Resultado: ${result ?? ''}',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 6.0,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.wavy,
            decorationColor: Colors.lightBlueAccent,
            decorationThickness: 3,
          ),
        )*/
        Text.rich(TextSpan(
          text: 'Resultado: ',
          style: GoogleFonts.adamina(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
          children: [
            TextSpan(
              text: '${result ?? ''}',
              style: TextStyle(
                  fontFamily: 'Silkscreen',
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 6.0,
                  color: Colors.amber),
            )
          ],
        ))
      ],
    );
  }
}
