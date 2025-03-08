import 'package:flutter/material.dart';

class ShopingCart extends StatelessWidget {
  const ShopingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrito de Compras"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text("Carrito de Compras"),
      ),
    ); 
  }
}