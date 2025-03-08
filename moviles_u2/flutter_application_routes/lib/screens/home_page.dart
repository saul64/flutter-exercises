import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('H O M E'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() => {
            //Ir a la pagina de inicio
            Navigator.pushNamed(context, '/introductionpage')
          }), 
          child: Text('Regresar')),
      ),
    );
  }
}