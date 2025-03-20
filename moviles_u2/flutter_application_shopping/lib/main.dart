import 'package:flutter/material.dart';
import 'package:flutter_application_shoping/models/gpus.dart';
import 'package:flutter_application_shoping/screens/home_page_shoping.dart';
import 'package:flutter_application_shoping/screens/new_page_shopping.dart';
import 'package:flutter_application_shoping/screens/product_details.dart';
import 'package:flutter_application_shoping/screens/shoping_cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/new_page_shopping',
      routes: {
        '/home': (context) => HomePageShopping(),
        '/shoping_cart': (context) => ShopingCart(),
        '/new_page_shopping': (context) => NewPageShopping(),
      },

      onGenerateRoute: (settings) {
        if (settings.name == '/product_details') {
          // Obtenemos el argumento enviado desde GPUCard
          final GPU gpu = settings.arguments as GPU;
          return MaterialPageRoute(
            builder: (context) => ProductDetails(gpu: gpu),
          );
        }
        return null;
      },
    );
  }
}
