class Movie {
  final String title;
  final String image;
  final double? rating;
  final String? releaseDate;

  Movie({
    required this.title,
    required this.image,
    this.rating,
    this.releaseDate,
  });
}

// Lista de películas en tendencia
final List<Movie> trendingMovies = [
  Movie(title: 'INTERSTELLAR', image: 'assets/img/trending/tendencia1.jpg', rating: 10),
  Movie(title: 'SONIC 3', image: 'assets/img/trending/tendencia11.jpg', rating: 9.5),
  Movie(title: 'MUFASA: EL REY LEÓN', image: 'assets/img/trending/tendencia12.jpg', rating: 9.0),
  Movie(title: 'FLOW', image: 'assets/img/trending/tendencia5.jpg', rating: 9.0),
  Movie(title: 'UN COMPLETO DESCONOCIDO', image: 'assets/img/trending/tendencia9.jpg', rating: 9.0),
  Movie(title: 'AMENAZA EN EL AIRE', image: 'assets/img/trending/tendencia10.jpg', rating: 9.0),
  Movie(title: 'ESTACIÓN FANTASMA', image: 'assets/img/trending/tendencia7.jpg', rating: 8.0),
  Movie(title: 'LA SEMILLA DEL FRUTO SAGRADO', image: 'assets/img/trending/tendencia8.jpg', rating: 8.0),
  Movie(title: 'ARCADIAN', image: 'assets/img/trending/tendencia6.jpg', rating: 7.5),
  Movie(title: 'NOSFERATU', image: 'assets/img/trending/tendencia4.jpg', rating: 6.0),
  Movie(title: 'SUSURROS MORTALES 2', image: 'assets/img/trending/tendencia2.jpg', rating: 4.0),
  Movie(title: 'LA ACOMPAÑANTE', image: 'assets/img/trending/tendencia3.jpg', rating: 3.5),
];

// Lista de películas próximas
final List<Movie> upcomingMovies = [
  Movie(title: 'CAPITÁN AMÉRICA: UN NUEVO MUNDO', image: 'assets/img/upcoming/proximamente1.jpg', releaseDate: '13/02/2025'),
  Movie(title: 'LAS VIDAS DE SING SING', image: 'assets/img/upcoming/proximamente8.jpg', releaseDate: '13/02/2025'),
  Movie(title: 'HIJOS DEL DIABLO', image: 'assets/img/upcoming/proximamente10.jpg', releaseDate: '13/02/2025'),
  Movie(title: 'MARIA CALLAS', image: 'assets/img/upcoming/proximamente2.jpg', releaseDate: '20/02/2025'),
  Movie(title: 'THE MONKEY', image: 'assets/img/upcoming/proximamente3.jpg', releaseDate: '20/02/2025'),
  Movie(title: 'MEMORIAS DE UN CARACOL', image: 'assets/img/upcoming/proximamente5.jpg', releaseDate: '20/02/2025'),
  Movie(title: 'AUN ESTOY AQUÍ', image: 'assets/img/upcoming/proximamente6.jpg', releaseDate: '20/02/2025'),
  Movie(title: 'ATTACK ON TITAN: THE LAST ATTACK', image: 'assets/img/upcoming/proximamente4.jpg', releaseDate: '27/02/2025'),
  Movie(title: 'BETTERMAN', image: 'assets/img/upcoming/proximamente7.jpg', releaseDate: '27/02/2025'),
  Movie(title: 'EL AMATEUR: OPERACIÓN VENGANZA', image: 'assets/img/upcoming/proximamente9.jpg', releaseDate: '10/04/2025'),
];
