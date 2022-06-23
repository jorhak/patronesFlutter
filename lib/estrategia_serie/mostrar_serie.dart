import 'package:patrones/estrategia_serie/serie.dart';

class MostrarSerie {
  late ISerie _serie;
  late num _valor;

  MostrarSerie(num valor) {
    _valor = valor;
  }

  void setEstrategia(ISerie serie) {
    _serie = serie;
  }

  String mostrar() {
    return _serie.obtenerSerie(_valor);
  }
}
