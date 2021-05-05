import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _toDoList = []; // lista de tarefas
  final _toDoController = TextEditingController();
  int _indexLastRemoved; // guarda o índice do último registro removido
  Map<String, dynamic> _lastRemoved;

  @override
  void initState() {
    super.initState();
    _lerDados().then((value) {
      // carrega os dados do arquivo ao mudar o estado da classe
      setState(() {
        _toDoList = jsonDecode(value);
      });
    });
  }

  // "async" - determina que um método será assíncrono,
  // não retornará imediatamente um valor.

  //  "await" - determina que o aplicativo aguarde um retorno (reposta)

  // "Future" = determina que uma função retornará algo no futuro

  Future<String> _lerDados() async {
    try {
      final arquivo = await _abreArquivo();
      return arquivo.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> _abreArquivo() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");
  }

  Future<Null> _recarregaLista() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _toDoList.sort((a, b) {
        if (a['realizado'] && !b['realizado']) return 1;
        if (!a['realizado'] && b['realizado']) return -1;
        return 0;
      });
      _salvarDados();
    });
    return null;
  }

  Future<File> _salvarDados() async {
    String dados = json.encode(_toDoList);
    final arquivo = await _abreArquivo();
    return arquivo.writeAsString(dados);
  }

  // método para adicionar as tarefas
  void _adicionarTarefa() {
    setState(() {
      Map<String, dynamic> novaTarefa = Map();
      novaTarefa['titulo'] = _toDoController.text;
      novaTarefa['realizado'] = false; // (-1)
      _toDoController.text = '';
      _toDoList.add(novaTarefa);
      _salvarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
