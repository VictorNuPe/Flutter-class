class Aluno {
  // Encapsulamento em dart e construtor
  // o underline coloque a variável como private

  String _nome;
  int _idade;

  // constructor
  Aluno({String nome, int idade}) {
    _nome = nome;
    _idade = idade;
  }

  // getters e setters
  String get nome => _nome;
  set nome(value) => _nome = value;

  int get idade => _idade;
  set idade(value) => _idade = value;
}
