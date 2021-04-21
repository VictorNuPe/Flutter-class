import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  // aqui vamos criar o estado da aplicação
  @override
  _HomeState createState() => _HomeState();
}

// essa classe controla o estado da aplicação (State)
class _HomeState extends State<Home> {
  // configurando os nossos campos de entrada de valores
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String _resultado = ''; // recebe o resultado 'texto' do cálculo
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // métodos para calcular combustível e resetar a aplicação

  void _reset() {
    alcoolController.text = '';
    gasolinaController.text = '';
    setState(() {
      _resultado = '';
      _formKey = GlobalKey<FormState>(); // resetou o estado do formulário
    });
  }

  void _calculaCombustivelIdeal() {
    setState(() {
      double varAlcool =
          double.parse(alcoolController.text.replaceAll(',', '.'));
      double varGasolina =
          double.parse(gasolinaController.text.replaceAll(',', '.'));
      double proporcao = varAlcool / varGasolina;

      // operador ternário
      _resultado =
          (proporcao < 0.7) ? 'Abasteça com Álcool' : 'Abasteça com Gasolina';
    });
  }

  // a partir daqui vamos criar uma interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Álcool ou Gasolina',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _reset();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.local_gas_station,
                size: 150.00,
                color: Colors.lightBlue[900],
              ),
              TextFormField(
                controller: alcoolController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value.isEmpty ? 'Informe o valor do Álcool' : null,
                decoration: InputDecoration(
                  labelText: 'Valor do Álcool',
                  labelStyle: TextStyle(color: Colors.lightBlue[900]),
                ),
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 25.00,
                ),
              ),
              TextFormField(
                controller: gasolinaController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value.isEmpty ? 'Informe o valor da Gasolina' : null,
                decoration: InputDecoration(
                  labelText: 'Valor do Gasolina',
                  labelStyle: TextStyle(color: Colors.lightBlue[900]),
                ),
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 25.00,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                child: Container(
                  height: 50.0,
                  child: RawMaterialButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _calculaCombustivelIdeal();
                      }
                    },
                    child: Text(
                      'Verificar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    fillColor: Colors.lightBlue[900],
                  ),
                ),
              ),
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 25.00),
              )
            ],
          ),
        ),
      ),
    );
  }
}
