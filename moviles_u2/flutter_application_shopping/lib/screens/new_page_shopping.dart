import 'package:flutter/material.dart';
import 'package:flutter_application_shoping/models/gpu.dart';

// Widget principal para mostrar las GPUs.
class NewPageShopping extends StatefulWidget {
  const NewPageShopping({super.key});

  @override
  State<NewPageShopping> createState() => _NewPageShoppingState();
}

class _NewPageShoppingState extends State<NewPageShopping> {
  late Future<List<Gpu>> futureGpus;

  @override
  void initState() {
    super.initState();
    futureGpus = cargarGpus();  // Cargar GPUs al inicializar el estado.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page Shopping"),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder<List<Gpu>>(
        future: futureGpus,
        builder: (context, snapshot) {
          // Si el futuro aún se está cargando, mostramos un indicador de carga.
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          // Si ocurrió un error al cargar los datos, mostramos un mensaje de error.
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // Si los datos se cargaron correctamente, mostramos la lista de GPUs.
          if (snapshot.hasData) {
            final graficas = snapshot.data!;
            return ListView.builder(
              itemCount: graficas.length,
              itemBuilder: (context, index) {
                final gpu = graficas[index];
                return ListTile(
                  leading: Image.asset(
                    gpu.img,
                    width: 50,  // Ajusta el tamaño de la imagen según sea necesario
                    fit: BoxFit.cover,
                  ),
                  title: Text(gpu.titulo),
                  subtitle: Text('\$${gpu.precio.toStringAsFixed(2)}'),
                );
              },
            );
          }

          // Si no hay datos, mostramos un mensaje de "sin resultados".
          return Center(child: Text('No se encontraron datos.'));
        },
      ),
    );
  }
}
