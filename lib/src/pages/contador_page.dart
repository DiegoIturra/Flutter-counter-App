import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{
  
   //Crear un Text Style para reutilizar en los widget
  final estiloTexto = new TextStyle(fontSize: 30);

  int counter = 0;

  void incrementCounter(){
    //setState redibuja el estado del widget actual
    setState(() {
      this.counter++;
    });
  }

  void decrementCounter(){
    setState(() {
      this.counter--;
    });
  }

  void resetCounter(){
    setState(() {
      this.counter = 0;
    });
  }

  /* Retorna un widget tipo Row el cual tiene como hijos
  3 floatingActionbutton */
  Widget _contenedorBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: incrementCounter,
          ),
          SizedBox(width: 15.0),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: decrementCounter,
          ),
          SizedBox(width: 15.0),
          FloatingActionButton(
            child: Icon(Icons.stop),
            onPressed: resetCounter,
          )
        ],
    );
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

      /*se tiene una fila de floatingActionButton alineados al centro*/
      floatingActionButton: _contenedorBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }



}