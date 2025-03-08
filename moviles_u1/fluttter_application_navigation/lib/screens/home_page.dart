import 'package:flutter/material.dart';
import 'package:fluttter_application_navigation/providers/update_navigation_bar_provider.dart';
import 'package:fluttter_application_navigation/screens/screen_my_profile.dart';
import 'package:fluttter_application_navigation/screens/screen_settings.dart';
import 'package:fluttter_application_navigation/widgets/custom_navigation_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActualizarNavegacionProvider>(
      builder: (context, provider, child) => Scaffold(
        bottomNavigationBar: CustomNavigationBar(),
        body: _HomePage(provider: provider),  // Pasamos directamente el provider aquí
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  final ActualizarNavegacionProvider provider;

  const _HomePage({required this.provider});

  @override
  Widget build(BuildContext context) {
    switch (provider.indicePagina) {
      case 1:
        return ScreenMyProfile();
      case 2: 
        return ScreenSettings();
      default:
        return ScreenSettings();
    }
  }
}
