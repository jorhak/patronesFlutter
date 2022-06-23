import 'package:patrones/plantilla/serie.dart';

class MostrarSerie {
  late Serie _serie;
  late num _valor;

  MostrarSerie(num valor) {
    _valor = valor;
  }

  void setSerie(Serie serie) {
    _serie = serie;
  }

  String mostrarSerie() {
    _serie.setValor(_valor);
    return _serie.metodoPlantilla();
  }
}
