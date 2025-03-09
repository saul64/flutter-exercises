import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;


class Gpu {

  int id;
  String titulo;
  String categoria;
  String marca;
  double calificacion;
  String descripcion;
  String img;
  int precio;
  int cantidad;

  Gpu({
    required this.id,
    required this.titulo,
    required this.categoria,
    required this.marca,
    required this.calificacion,
    required this.descripcion,
    required this.img,
    required this.precio,
    required this.cantidad,
  });

  factory Gpu.fromJson(Map<String, dynamic> json) {
    return Gpu(
      id: json["id"],
      titulo: json["titulo"],
      categoria: json["categoria"],
      marca: json["marca"],
      calificacion: json["calificacion"].toDouble(),
      descripcion: json["descripcion"],
      img: json["img"],
      precio: json["precio"],
      cantidad: json["cantidad"],
    );
  }
}
Future<List<Gpu>> cargarGpus() async {
  try {
    final String jsonString = await rootBundle.loadString('assets/json/gpu.json');
    final Map<String, dynamic> data = json.decode(jsonString);
    
    print(data); // Agrega esto para verificar si los datos se cargan correctamente

    List<dynamic> gpusJson = data['gpus'];
    List<Gpu> graficas = gpusJson.map((grafica) => Gpu.fromJson(grafica)).toList();
  
    return graficas;
  } catch (e) {
    print("Error cargando los datos de las GPUs: $e");
    return [];
  }
}
 
