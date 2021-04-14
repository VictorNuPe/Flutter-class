import 'dart:math';

class Operacoes {
  /// Este método soma dois números informados
  /// 
  /// parâmetros: dynamic num1 e dynamic num2
  /// 
  /// retorno: dynamic
  /// 
  /// Ex.: somar(10,20)
  dynamic somar(dynamic x, dynamic y) {
    return x + y;
  }

  dynamic multiplicar(dynamic x, dynamic y) {
    return x * y;
  }

  dynamic isPar(dynamic x) {
    return (x % 2 == 0);
  }

  dynamic potencia(dynamic x, dynamic y) {
    return pow(x, y);
  }
}
