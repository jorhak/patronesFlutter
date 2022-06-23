import 'package:flutter/material.dart';
import 'package:patrones/componentes/dos_textfield.dart';
import 'package:patrones/estrategia/division.dart';
import 'package:patrones/estrategia/multiplicar.dart';
import 'package:patrones/estrategia/operacion_aritmetica.dart';
import 'package:patrones/estrategia/restar.dart';
import 'package:patrones/estrategia/sumar.dart';

class EstrategiaView extends StatefulWidget {
  const EstrategiaView({Key? key}) : super(key: key);
  @override
  State<EstrategiaView> createState() => _EstrategiaViewState();
}

class _EstrategiaViewState extends State<EstrategiaView> {
  final _valorA = TextEditingController();
  final _valorB = TextEditingController();
  var _resultado = '0';

  TextStyle estilo() {
    // ignore: prefer_const_constructors
    return TextStyle(
        inherit: true,
        color: Colors.deepPurple,
        fontStyle: FontStyle.italic,
        fontSize: 15.0);
  }

  @override
  void dispose() {
    _valorA.dispose();
    _valorB.dispose();
    super.dispose();
  }

  void estado() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estrategia'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 151, 247, 159),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10.0)),
            fila(MainAxisAlignment.spaceEvenly, _valorA, _valorB),
            const Padding(padding: EdgeInsets.all(10.0)),
            SizedBox(
              width: 500.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        OperacionAritmetica o = OperacionAritmetica(
                            double.parse(_valorA.text),
                            double.parse(_valorB.text));
                        o.setEstrategia(Suma());
                        _resultado = o.procesar().toString();
                      });
                    },
                    child: Text(
                      "Suma",
                      style: estilo(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        OperacionAritmetica o = OperacionAritmetica(
                            double.parse(_valorA.text),
                            double.parse(_valorB.text));
                        o.setEstrategia(Resta());
                        _resultado = o.procesar().toString();
                      });
                    },
                    child: Text(
                      "Resta",
                      style: estilo(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        OperacionAritmetica o = OperacionAritmetica(
                            double.parse(_valorA.text),
                            double.parse(_valorB.text));
                        o.setEstrategia(Multiplicar());
                        _resultado = o.procesar().toString();
                      });
                    },
                    child: Text(
                      "Multiplicacion",
                      style: estilo(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        OperacionAritmetica o = OperacionAritmetica(
                            double.parse(_valorA.text),
                            double.parse(_valorB.text));
                        o.setEstrategia(Dividir());
                        _resultado = o.procesar().toString();
                      });
                    },
                    child: Text(
                      "Division",
                      style: estilo(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_resultado),
            )
          ],
        ),
      ),
    );
  }
}
