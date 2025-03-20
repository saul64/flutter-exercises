import 'package:flutter/material.dart';
import 'package:flutter_application_shoping/models/gpus.dart';
import 'package:flutter_application_shoping/services/gpu_service.dart';
import 'package:flutter_application_shoping/widgets/gpu_card.dart';
import 'package:flutter_application_shoping/widgets/section_title.dart';

class HomePageShopping extends StatefulWidget {
  const HomePageShopping({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageShoppingState createState() => _HomePageShoppingState();
}

class _HomePageShoppingState extends State<HomePageShopping> {
  List<GPU> gpuList = [];

  @override
  void initState() {
    super.initState();
    loadGpuData();
  }

  Future<void> loadGpuData() async {
    List<GPU> loadedGPUs = await GPUService.loadGPUs();
    setState(() {
      gpuList = loadedGPUs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("XGaming", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () {
              Navigator.pushNamed(context, '/shoping_cart');
            },
          ),
        ],
      ),
      body: gpuList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  SectionTitle(title: "GPUs de Alta Gama"),
                  buildHorizontalList(gpuList.sublist(0, (gpuList.length / 2).round())),
                  SectionTitle(title: "GPUs de Gama Media y Baja"),
                  buildHorizontalList(gpuList.sublist((gpuList.length / 2).round())),
                  SizedBox(height: 20),
                ],
              ),
            ),
      backgroundColor: Colors.grey[100],
    );
  }

  Widget buildHorizontalList(List<GPU> items) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GPUCard(gpu: items[index]);
        },
      ),
    );
  }
}
