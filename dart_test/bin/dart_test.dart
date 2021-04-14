import 'package:dart_test/dart_test.dart' as dart_test;
import 'dart:io';

void main(List<String> arguments) {
  void funcao(String nome, {String cor, int valor}) {
    print(nome);
    print(cor ?? 'azul');
    print(valor ?? 35);
  }

  funcao('Edson Melo', cor: 'verde', valor: 90);

  // String nome_x(String name, {int type, int mode}){

  // }
}
