import 'package:flutter/material.dart';

class PaginaOperacionesMatematicas extends StatefulWidget {
  @override
  _PaginaOperacionesMatematicasState createState() => _PaginaOperacionesMatematicasState();
}

class _PaginaOperacionesMatematicasState extends State<PaginaOperacionesMatematicas> {
  final TextEditingController controladorNumero1 = TextEditingController();
  final TextEditingController controladorNumero2 = TextEditingController();
  final TextEditingController controladorNumero3 = TextEditingController();

  String resultado = '';

  void calcularMayor() {
    double num1 = double.tryParse(controladorNumero1.text) ?? 0;
    double num2 = double.tryParse(controladorNumero2.text) ?? 0;
    double num3 = double.tryParse(controladorNumero3.text) ?? 0;

    double mayor = num1;
    if (num2 > mayor) mayor = num2;
    if (num3 > mayor) mayor = num3;

    setState(() {
      resultado = 'El número mayor es: $mayor';
    });
  }

  void calcularMenor() {
    double num1 = double.tryParse(controladorNumero1.text) ?? 0;
    double num2 = double.tryParse(controladorNumero2.text) ?? 0;
    double num3 = double.tryParse(controladorNumero3.text) ?? 0;

    double menor = num1;
    if (num2 < menor) menor = num2;
    if (num3 < menor) menor = num3;

    setState(() {
      resultado = 'El número menor es: $menor';
    });
  }

  void calcularCuadrado() {
    double num1 = double.tryParse(controladorNumero1.text) ?? 0;
    double cuadrado = num1 * num1;

    setState(() {
      resultado = 'El cuadrado del número 1 es: $cuadrado';
    });
  }

  void calcularCubo() {
    double num1 = double.tryParse(controladorNumero1.text) ?? 0;
    double cubo = num1 * num1 * num1;

    setState(() {
      resultado = 'El cubo del número 1 es: $cubo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operaciones Matemáticas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controladorNumero1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: controladorNumero2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 2'),
            ),
            TextField(
              controller: controladorNumero3,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número 3'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calcularMayor,
                  child: const Text('Número Mayor'),
                ),
                ElevatedButton(
                  onPressed: calcularMenor,
                  child: const Text('Número Menor'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calcularCuadrado,
                  child: const Text('Cuadrado del Número 1'),
                ),
                ElevatedButton(
                  onPressed: calcularCubo,
                  child: const Text('Cubo del Número 1'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

