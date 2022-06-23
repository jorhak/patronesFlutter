import 'text.dart';

class Memento {
  late Texto _texto;

  Memento() {
    _texto = Texto();
  }

  Memento.texto(Texto texto) {
    _texto = texto;
  }

  Texto getTexto() => _texto;

  void setTexto(Texto texto) {
    _texto = texto;
  }
}
