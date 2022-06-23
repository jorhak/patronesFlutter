import 'package:patrones/estrategia_serie/serie.dart';

class SerieA extends ISerie {
  @override
  String obtenerSerie(num valor) {
    num co = 1;
    num serie = 0;
    String resultado = '';
    while (co <= valor) {
      resultado += operacion(serie).toString() + ', ';
      co += 1;
      serie += 1;
    }
    return resultado;
  }

  @override
  num operacion(num serie) {
    return serie != 0 ? serie + 1 : 1;
  }
}
