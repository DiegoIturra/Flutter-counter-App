import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  /*con el override sobreescribimos el metodo build() de la clase StatelessWidget con nuestro propio codigo */
  @override
  Widget build(BuildContext context) {

    //Devuelve un MaterialApp el cual tiene un home principal
    return MaterialApp(
      //el home corresponde a un Widget Center , el cual tiene como hijo un texto
      home: Center(child: Text("Hello World!!"),),
    );
  }
}