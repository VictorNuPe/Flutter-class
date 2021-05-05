import 'package:flutter/material.dart';
import 'package:tarefas/temas/temas.dart';
import 'package:tarefas/telas/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de tarefas',
      home: Home(),
      themeMode: ThemeMode.system, // tema atual do smartphone
      theme: lightTheme(),
      darkTheme: darkTheme(),
    )
  );  
}
