import 'package:flutter/material.dart';

//Stateless no actualiza la pagina
//Stateful si actualiza la pagina
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0; //tiene que ser una propiedad del objeto para que funcione

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const tamano30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 185, 216),
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
      floatingActionButton: customFloatingActionButton(
        incrementarFn: incrementar,
        decrementarFn: decrementar,
        resetFn: reset,
      ),
    ); // Center
  }
}

class customFloatingActionButton extends StatelessWidget {
  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetFn;

  const customFloatingActionButton({
    super.key,
    required this.incrementarFn,
    required this.decrementarFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //centramos el Row
      children: [
        //boton de suma
        FloatingActionButton(
          child: const Icon(Icons.remove), //const Text("añadir")
          onPressed: () => decrementarFn(),
        ),
        //boton de resta
        FloatingActionButton(
          child: const Icon(Icons.autorenew), //const Text("añadir")
          onPressed: () => resetFn(),
        ),
        //boton de reset
        FloatingActionButton(
          child: const Icon(Icons.add), //const Text("añadir")
          onPressed: () => incrementarFn(),
        ),
      ],
    );
  }
}
