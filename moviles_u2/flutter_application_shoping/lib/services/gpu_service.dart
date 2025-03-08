import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application_shoping/models/gpus.dart';

class GPUService {
  static Future<List<GPU>> loadGPUs() async {
    try{
      //Cargar el archivo JSON
      String jsonString = await rootBundle.loadString('assets/json/gpu.json');

      //Decodificar el archivo JSON y convertirlo en una lista de Map<String, dynamic>
      List<dynamic> jsonList = json.decode(jsonString);
      List<GPU> gpus = jsonList.map((json) => GPU.fromJson(json)).toList();

      return gpus;
    }catch(e){
      print("Error cargando los datos de las GPUs: $e");
      return [];
    }
  }
}