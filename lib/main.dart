import 'package:app/home.dart';
import 'package:app/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(principal());
}

class principal extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: loginPage(),
      //home: Cursos()
    );
  }
}