import 'package:flutter/material.dart';

/* El Scaffold el es widget que abarca toda la pagina de 
la App*/
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador App"),
      ),
      body: Center(child: Text("Texto del body",),),
    );
  }
}