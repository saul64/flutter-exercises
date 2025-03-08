import 'package:flutter/material.dart';
import 'package:fluttter_application_navigation/providers/update_navigation_bar_provider.dart';
import 'package:provider/provider.dart';  // Corrige la importación aquí
import 'screens/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ActualizarNavegacionProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
