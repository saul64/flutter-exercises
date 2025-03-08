import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/update_navigation_bar_provider.dart';
     
class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
      builder: (context, provider, child) {
        return BottomNavigationBar(
          currentIndex: provider.indicePagina,
          onTap: (valorSeleccionado) {
            provider.actualizarIndice(valorSeleccionado);
          },
          elevation: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "My profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configuración"),
          ],
        );
      },
    );
  }
}
