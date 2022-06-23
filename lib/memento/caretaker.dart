import 'memento.dart';
import 'text.dart';

class Caretaker {
  final List<Memento> _mementos = [];

  late int _posicion = 0;

  Caretaker();

  void backUp(Memento memento) {
    _mementos.add(memento);
    _posicion += 1;
  }

  Memento atras() {
    _posicion -= 1;
    Memento memento = Memento();
    if (_mementos.isNotEmpty && _posicion > 0) {
      if (_posicion < _mementos.length) {
        memento = _mementos.elementAt(_posicion - 1);
      }
    } else {
      _posicion = 0;
    }
    return memento;
  }

  Memento delante() {
    _posicion += 1;
    Memento memento = Memento();
    if (_mementos.isNotEmpty && _posicion <= _mementos.length) {
      if (_posicion <= _mementos.length) {
        memento = _mementos.elementAt(_posicion - 1);
      }
    } else {
      _posicion = _mementos.length;
    }
    return memento;
  }

  int posicion() {
    return _posicion;
  }

  String mementos() {
    String resultado = '';
    for (int i = 0; i < _mementos.length; i++) {
      Texto texto = _mementos.elementAt(i).getTexto();
      resultado = resultado + texto.getTexto() + '\n\r';
    }
    return resultado;
  }
}
