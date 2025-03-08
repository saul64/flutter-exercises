import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I N T R O D U C C I O N'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() => {
            //Ir a la pagina de inicio
            Navigator.pushNamed(context, '/homepage')
          }), 
          child: Text('Regresar')),
      ),
    );
  }
}