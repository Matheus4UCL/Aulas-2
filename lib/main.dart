import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Pessoas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContadorPessoas(),
    );
  }
}

class ContadorPessoas extends StatefulWidget {
  @override
  _ContadorPessoasState createState() => _ContadorPessoasState();
}

class _ContadorPessoasState extends State<ContadorPessoas> {
  int contador = 0;

  void incrementarPessoa() {
    if (contador < 10) {
      setState(() {
        contador++;
      });
    }
  }

  void decrementarPessoa() {
    if (contador > 0) {
      setState(() {
        contador--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de Pessoas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pessoas: $contador',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: incrementarPessoa,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: decrementarPessoa,
                  child: Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
