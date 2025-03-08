import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de animales con íconos disponibles
  List<String> bestias = ['Caballo', 'Perro', 'Gato', 'Vaca', 'Toro', 'Tiburon'];

  // Mapa con los íconos correspondientes a cada animal
  final Map<String, IconData> iconosAnimales = {
    'Caballo': FontAwesomeIcons.horse,
    'Perro': FontAwesomeIcons.dog,
    'Gato': FontAwesomeIcons.cat,
    'Vaca': FontAwesomeIcons.cow,
    'Toro': FontAwesomeIcons.cow, 
    'Tiburon': FontAwesomeIcons.fish, 
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de animales', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: bestias.length,
        itemBuilder: (context, index) {
          String animal = bestias[index]; 
          IconData icono = iconosAnimales[animal] ?? Icons.pets;
          
          return ListTile(
            leading: FaIcon(icono, color: Colors.black), 
            title: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                animal,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
