import 'package:flutter/material.dart';
import 'package:flutter_application_shoping/models/gpus.dart';
import 'package:intl/intl.dart';

class GPUCard extends StatelessWidget {
  final GPU gpu;

  const GPUCard({super.key, required this.gpu});

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat("#,##0.00", "en_US").format(gpu.precio);

    return GestureDetector(
      onTap: () {
        // Enviar el objeto gpu como argumento en la navegación
        Navigator.pushNamed(
          context,
          '/product_details',
          arguments: gpu, // Se pasa el GPU seleccionado como argumento
        );
      },
      child: Container(
        width: 180,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  gpu.img,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gpu.titulo,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "\$$formattedPrice",
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
