import 'package:flutter/material.dart';
import 'package:new_flutter_project/models/coffee_shop.dart';
import 'package:new_flutter_project/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(create: (context)=> CoffeeShop(),
    builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()),);
  }
}
