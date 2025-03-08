import 'package:flutter/material.dart';
import 'package:flutter_application_shoping/models/gpu.dart';

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
          final graficas = snapshot.data;
            return ListView.builder(
              itemCount: graficas?.length,
              itemBuilder: (context, index) {
                final gpu = graficas?[index];
                return ListTile(
                  title: Text(gpu!.titulo),
                  subtitle: Text(gpu.precio.toString()),
                  leading: Image.network(gpu.img),
                );
              },
            );
          }
      ),
    );
  }
}