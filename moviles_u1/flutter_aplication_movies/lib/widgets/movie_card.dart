import 'package:flutter/material.dart';
import '../data/movies_data.dart'; // Asegúrate de que esta ruta sea correcta

class MovieCard extends StatelessWidget {
  final Movie movie;
  final bool isTrending;

  const MovieCard({super.key, required this.movie, required this.isTrending});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 140,  // Ancho reducido
          height: 320, // Mantén la altura total
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              // Imagen de la película
              Container(
                width: double.infinity,
                height: 200,  // Imagen ajustada
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(movie.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Contenedor de información debajo de la imagen
              Expanded(  // Usamos Expanded para que el contenido ocupe el espacio restante
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Rating de la película (si existe)
                      if (movie.rating != null)
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              movie.rating!.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9,  // Ajusta el tamaño del texto
                              ),
                            ),
                          ],
                        ),
                      // Título de la película con máximo de 2 líneas
                      Text(
                        movie.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,  // Ajusta el tamaño del texto
                        ),
                        maxLines: 2,  // Limita el título a 2 líneas
                        overflow: TextOverflow.ellipsis,  // Muestra puntos suspensivos si el texto es muy largo
                      ),
                      // Espaciador para asegurar que el contenido ocupe el espacio restante
                      const Spacer(),
                      // Si es trending, se añade el botón para ver el trailer
                      if (isTrending)
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: ElevatedButton(
                            onPressed: () {
                              print("Ver ${movie.title}");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 4.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.play_circle_outline_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 4.0),
                                Text(
                                  "Ver trailer",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      // Fecha de estreno (si no es tendencia)
                      if (movie.releaseDate != null && !isTrending)
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                              size: 14,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              movie.releaseDate!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,  // Ajusta el tamaño del texto
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
