import 'package:flutter/material.dart';

//Stateless no actualiza la pagina

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0; //tiene que ser una propiedad del objeto para que funcione

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 176, 189),
      appBar: AppBar(title: Text('Contador'), elevation: 10.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("numeros de clicks", style: tamano30),
            SizedBox(height: 100, width: 100),
            Text('$contador', style: tamano30),
          ],
        ),
      ),
      //añadimos un widget -> boton en el centro
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center, //centramos el Row
        children: [
          //boton de suma
          FloatingActionButton(
            child: const Icon(Icons.add), //const Text("añadir")
            onPressed: () {
              print("se ha pulsado el boton");
              contador++;
              setState(() {}); //notifica que hay un cambio
              print('$contador');
            },
          ),
          //boton de resta
          FloatingActionButton(
            child: const Icon(Icons.remove), //const Text("añadir")
            onPressed: () {
              print("se ha pulsado el boton");
              contador--;
              setState(() {}); //notifica que hay un cambio
              print('$contador');
            },
          ),
        ],
      ),
    ); // Center
  }
}
