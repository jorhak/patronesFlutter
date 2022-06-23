import 'memento.dart';

class Texto {
  late String _valor;

  Texto() {
    _valor = '';
  }

  Texto.valor(String texto) {
    _valor = texto;
  }

  void setTexto(String texto) {
    _valor = texto;
  }

  String getTexto() => _valor;

  Memento createMemento() {
    Texto texto = Texto();
    texto.setTexto(_valor);
    Memento memento = Memento.texto(texto);
    return memento;
  }

  void setTextoFromMemento(Memento memento) {
    _valor = memento.getTexto().getTexto();
  }
}
