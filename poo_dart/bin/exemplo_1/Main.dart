import 'Aluno.dart';

void main(List<String> args) {
  var aluno = Aluno();

  aluno.nome = 'Victor';
  aluno.idade = 19;
  print('O aluno ${aluno.nome} tem ${aluno.idade} anos.');
  aluno.fazAniversario();
  print('O aluno ${aluno.nome} tem ${aluno.idade} anos.');
}
