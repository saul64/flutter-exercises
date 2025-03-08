import 'package:flutter/material.dart';
import '../data/movies_data.dart'; // Importa la clase Movie
import 'movie_card.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movies;
  final bool isTrending;

  const MovieList({super.key, required this.movies, required this.isTrending});

  @override
  Widget build(BuildContext context) {
    return isTrending
        ? SizedBox(
            height: 270,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: movies.map((movie) => MovieCard(movie: movie, isTrending: true)).toList(),
              ),
            ),
          )
        : Column(
            children: movies.map((movie) => MovieCard(movie: movie, isTrending: false)).toList(),
          );
  }
}
