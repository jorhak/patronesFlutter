import 'package:patrones/plantilla/serie.dart';

class SerieB extends Serie {
  @override
  num operacion(num serie) {
    return serie != 0 ? multi(serie) : 1;
  }

  num multi(num cantidad) {
    num valor = 1;
    while (cantidad > 0) {
      valor = valor * 10;
      cantidad -= 1;
    }
    return valor;
  }
}
