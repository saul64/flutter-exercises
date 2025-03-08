import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  final IconData iconPers;
  final String labelText;
  final String hintText;
  final String helperText;
  final IconData icon;
  final IconData iconSub;
  final TextInputType keyboardType;

  const InputPersonalizado({
    required this.iconPers,
    required this.labelText,
    required this.hintText,
    required this.helperText,
    required this.icon,
    required this.iconSub,
    this.keyboardType = TextInputType.text,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        icon: Icon(iconPers),
        iconColor: Colors.amber[700],
        //label: Text("Escribe tu nombre"),  
        labelText: labelText,
        hintText: hintText,
        //helper: Text("campo requerido"), 
        helperText: helperText,
        //errorText: "error no has puesto tu nombre",
        prefixIcon: Icon(icon),
        suffixIcon: Icon(iconSub)
      ),
    );
  }
}