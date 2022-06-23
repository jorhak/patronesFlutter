import 'package:patrones/estrategia/inter_aritmetica.dart';

class OperacionAritmetica {
  late IAritmetica _estrategia;
  late double _a;
  late double _b;

  OperacionAritmetica(double a, double b) {
    _a = a;
    _b = b;
  }

  void setEstrategia(IAritmetica estrategia) {
    _estrategia = estrategia;
  }

  double procesar() {
    return _estrategia.realizarOperacion(_a, _b);
  }
}
