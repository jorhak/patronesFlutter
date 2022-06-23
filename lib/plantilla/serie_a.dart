import 'package:patrones/plantilla/serie.dart';

class SerieA extends Serie {
  @override
  num operacion(num serie) {
    return serie != 0 ? serie + 1 : 1;
  }
}
