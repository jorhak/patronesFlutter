import 'package:flutter/material.dart';
import 'package:patrones/estrategia_serie/mostrar_serie.dart';
import 'package:patrones/estrategia_serie/serie_a.dart';
import 'package:patrones/estrategia_serie/serie_b.dart';

class EstrategiaSerieView extends StatefulWidget {
  const EstrategiaSerieView({Key? key}) : super(key: key);
  @override
  State<EstrategiaSerieView> createState() => _EstrategiaSerieViewState();
}

class _EstrategiaSerieViewState extends State<EstrategiaSerieView> {
  final _valor = TextEditingController();
  var _resultado = 'hola';
  TextStyle estilo() {
    return const TextStyle(
      fontSize: 12.0,
      color: Colors.white,
    );
  }

  @override
  void dispose() {
    _valor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Estrategia Serie"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _valor,
            ),
          ),
          SizedBox(
            width: 200.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      MostrarSerie serie = MostrarSerie(num.parse(_valor.text));
                      serie.setEstrategia(SerieA());
                      _resultado = serie.mostrar();
                    });
                  },
                  child: Text(
                    "Serie A",
                    style: estilo(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      MostrarSerie serie = MostrarSerie(num.parse(_valor.text));
                      serie.setEstrategia(SerieB());
                      _resultado = serie.mostrar();
                    });
                  },
                  child: Text(
                    "Serie B",
                    style: estilo(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              _resultado,
            ),
          ),
        ],
      ),
    );
  }
}
