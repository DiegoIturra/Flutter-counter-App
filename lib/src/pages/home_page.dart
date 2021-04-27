import 'package:flutter/material.dart';

/* El Scaffold el es widget que abarca toda la pagina de 
la App*/
class HomePage extends StatelessWidget{

  //Crear un Text Style para reutilizar en los widget
  final estiloTexto = new TextStyle(fontSize: 30);

  int counter = 0;

  void incrementCounter(){
    this.counter++;
  }

  /*Un widget solo puede tener un child , para poder 
  ordenarlos en este caso de arriba a abajo , es mejor usar 
  un widget Columns */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador App"),
      ),
      body: Center(
        //el body corresponde a un Center , el cual centra
        //al child  el cual es un Column
        child: Column(
          //Centra los widget del Column en el centro
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Número de clicks",style: estiloTexto),
            Text("$counter",style: estiloTexto)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: incrementCounter,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}