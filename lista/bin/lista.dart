// Lista em Dart - é uma estrutura de dados que guarda os dados
// de forma sequencial na memória. É parecido com vetores.

import 'dart:io';

void main(List<String> arguments) {
  // criando uma lista de produtos
  // // <> esse par é conhecido com diamond
  // var produtos = <String>['Cenoura', 'Banana', 'Brócolis', 'Batata', 'Maçã'];

  // // mostrando os elementos da lista
  // print(produtos);

  // // acessando elementos pelo índice
  // print(produtos[0]);
  // print(produtos[3]);

  // // adicionando elementos na ao final da lista
  // produtos.add('Alface');
  // print(produtos);

  // // removendo elementos da lista
  // produtos.remove('Banana');
  // print(produtos);

  // // removendo elementos pelo seu índice
  // produtos.removeAt(0);
  // print(produtos);

  // // verificando o tamanho da lista
  // var tam = produtos.length;
  // print('A lista tem $tam produtos.');

  // // pesquisar uma ocorrência
  // print(produtos.contains('Doritos'));
  // //            OU
  // if (produtos.contains('Doritos')) {
  //   print('Tem doritos.');
  // } else {
  //   produtos.add('Doritos');
  //   print(produtos);
  // }

  // // Treinando
  // // Adicionar mais cinco produtos na lista e usando um laço for(),
  // // apresentar os produtos uma embaixo do outro.

  // produtos
  //   ..add('Ameixa')
  //   ..add('Abacate')
  //   ..add('Limão')
  //   ..add('Laranja')
  //   ..add('Salsinha');

  // for (var i = 0; i < produtos.length; i++) {
  //   print(produtos[i]);
  // }
  // //               OU
  // for (var produto in produtos) {
  //   print(produto);
  // }

  // var nomes = <String>[
  //   'Victor Nunes',
  //   'Marcelo Souza',
  //   'Ana Lopes',
  //   'Maria Silva',
  //   'Sergio Quintino'
  // ];
  // var asc = nomes..sort();
  // var desc = asc.reversed;
  // print(asc);
  // print(desc);

  // var n1 = 'O Edson é bonitão, #SQN, a mãe dele acha, tadinha!'.split(' ');
  // var lista = <String>[];
  // for (var L in n1) {
  //   lista.add(L);
  // }
  // print(lista);

  // // Leitura do teclado
  // var entrada = stdin.readLineSync();
  // print(entrada);

  // Trabalhando com objetos
  var alunos = <Aluno>[];
  alunos.add(Aluno(ra: 123, nome: 'Victor'));
  alunos.add(Aluno(ra: 322, nome: 'Marcia'));

  // Mostrando objetos dentro da lista
  for (var aluno in alunos) {
    print('Nome: ${aluno.nome} | RA: ${aluno.ra}');
  }

  // Removendo objeto
  alunos.removeWhere((Aluno a) => a.nome == 'Edson');

  // Atualizar objetos (pelo índice)
  alunos[0].nome = 'Caravana do Gugu';
  for (var aluno in alunos) {
    print(aluno.nome);
  }

  // outra forma de atualizar pelo índice (quando não sei o índice)
  alunos[alunos.indexWhere((Aluno a) => a.nome == 'Caravana do Gugu')].nome =
      'Domingo Legal';
  for (var aluno in alunos) {
    print(aluno.nome);
  }
}

// Criação de classe com construtor
class Aluno {
  int ra;
  String nome;
  // Construtor
  Aluno({this.ra, this.nome});
}
