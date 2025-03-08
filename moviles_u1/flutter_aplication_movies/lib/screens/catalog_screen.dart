import 'package:flutter/material.dart';
import '../data/movies_data.dart'; // Asegúrate de que esta ruta sea correcta
import '../widgets/movie_card.dart'; // Asegúrate de que esta ruta sea correcta

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Películas', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(  // Aquí se envuelve todo en un SingleChildScrollView
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0F172A),
                Color.fromARGB(255, 0, 22, 95),
                Color.fromARGB(255, 12, 8, 104),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Películas en cartelera
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'En cartelera',
                  style: const TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Roboto'),
                ),
              ),
              SizedBox(
                height: 350, // Altura para el scroll horizontal
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: trendingMovies.map((movie) {
                      return MovieCard(
                        movie: movie,
                        isTrending: true,
                      );
                    }).toList(),
                  ),
                ),
              ),

              // Películas próximamente
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Próximamente',
                  style: const TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Roboto'),
                ),
              ),
              Column(
                children: upcomingMovies.map((movie) {
                  return MovieCard(
                    movie: movie,
                    isTrending: false,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
