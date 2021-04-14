import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.purple,
        // primaryColor: Colors.amber[800],
        primaryColor: Colors.purple,
      ),
      home: MyHomePage(title: 'Primeiro app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _sum = 0;

  MaterialColor getColor() {
    if (_counter % 2 == 0) {
      return Colors.blue;
    } else {
      return Colors.red;
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  dynamic _soma(var a, var b) {
    setState(() {
      _sum = a + b;
      return _sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getColor(),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: getColor(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pirituba',
              style: TextStyle(
                fontSize: 34,
                backgroundColor: Colors.purple[500],
                fontFamily: 'Georgia',
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Pressione várias vezes para alterar o contador:',
            ),
            Text(
              'O número sempre iniciará em zero(0)',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2, // h1 até o h6
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment', // acessibilidade (leitura de tela)
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
