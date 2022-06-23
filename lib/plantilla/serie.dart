abstract class Serie {
  late num _valorEntrada;

  void setValor(num valor) {
    _valorEntrada = valor;
  }

  String metodoPlantilla() {
    num co = 1;
    num serie = 0;
    String resultado = '';
    while (co <= _valorEntrada) {
      resultado += operacion(serie).toString() + ', ';
      co += 1;
      serie += 1;
    }
    return resultado;
  }

  num operacion(num serie);
}
