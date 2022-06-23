import 'package:flutter/material.dart';
import 'package:patrones/plantilla/mostrar_serie.dart';
import 'package:patrones/plantilla/serie_a.dart';
import 'package:patrones/plantilla/serie_b.dart';
import 'package:patrones/plantilla/serie.dart';

class PlantillaView extends StatefulWidget {
  const PlantillaView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PlantillaView> createState() => _PlantillaViewState();
}

class _PlantillaViewState extends State<PlantillaView> {
  final _valorN = TextEditingController();
  var _texto = '';

  TextStyle estilo() {
    return TextStyle(color: Colors.green, fontSize: 30.0);
  }

  @override
  void dispose() {
    _valorN.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _valorN,
                obscureText: false,
                maxLength: 2,
                decoration: const InputDecoration(
                    fillColor: Colors.black,
                    border: OutlineInputBorder(),
                    labelText: 'N Elementos',
                    icon: Icon(Icons.subdirectory_arrow_right_rounded),
                    suffixIcon: Icon(Icons.check_circle),
                    helperText: 'Introdusca un número'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (_valorN.text != '') {
                                MostrarSerie serie =
                                    MostrarSerie(num.parse(_valorN.text));
                                serie.setSerie(SerieA());
                                _texto = serie.mostrarSerie();
                              } else {
                                _texto = 'Por favor introdusca un #';
                              }
                            });
                          },
                          child: const Text('Serie A'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (_valorN.text != '') {
                                MostrarSerie serie =
                                    MostrarSerie(num.parse(_valorN.text));
                                serie.setSerie(SerieB());
                                _texto = serie.mostrarSerie();
                              } else {
                                _texto = 'Por favor introdusca un #';
                              }
                            });
                          },
                          child: const Text('Serie B'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _texto,
                style: estilo(),
              ),
            ),
            // ignore: prefer_const_constructors
            //Padding(
            //padding: const EdgeInsets.all(8.0),
            //child: const Image(
            //image: AssetImage('assets/ma3.JPG'),
            //fit: BoxFit.cover,
            //width: 220.0,
            //height: 420.0,
            //),
            //),
          ],
        ),
      ),
    );
  }
}
