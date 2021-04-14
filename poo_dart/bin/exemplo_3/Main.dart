import 'Aluno.dart';

void main(List<String> args) {
  var aluno = Aluno(idade: 34);

  aluno.nome = 'Victor';
  print(aluno.nome);
  print(aluno.idade);
}
