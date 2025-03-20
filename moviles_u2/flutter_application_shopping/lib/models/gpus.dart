
class GPU {
  int id;
  String titulo;
  String categoria;
  String marca;
  double calificacion;
  String descripcion;
  String img;
  double precio;
  int cantidad;

  GPU({
    required this.id,
    required this.titulo,
    required this.categoria,
    required this.marca,
    required this.calificacion,
    required this.descripcion,
    required this.img,
    required this.precio,
    required this.cantidad
  });

  factory GPU.fromJson(Map<String, dynamic> json) {
    return GPU(
    id: json["id"],
    titulo: json["titulo"],
    categoria: json["categoria"],
    marca: json["marca"],
    calificacion: json["calificacion"].toDouble(),
    descripcion: json["descripcion"],
    img: json["img"],
    precio: json["precio"].toDouble(),
    cantidad: json["cantidad"]
  );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "titulo": titulo,
      "categoria": categoria,
      "marca": marca,
      "calificacion": calificacion,
      "descripcion": descripcion,
      "img": img,
      "precio": precio,
      "cantidad": cantidad
    };
  }
}

