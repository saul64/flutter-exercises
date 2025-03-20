import 'package:flutter/material.dart';
import 'package:new_flutter_project/models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  final Function()? onPressed;

  const CoffeeTile({super.key, required this.coffee, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(coffee.name),
      subtitle: Text(coffee.price),
      leading: Image.asset(coffee.imagePath),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.add)),
    );
  }
}
