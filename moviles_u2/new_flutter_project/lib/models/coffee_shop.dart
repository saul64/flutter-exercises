import 'package:flutter/material.dart';
import 'package:new_flutter_project/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffer for sale list
  final List<Coffee> _shop = [
    //coffe of chiapas
    Coffee(
      name: 'Coffe of Chiapas',
      price: '3.95',
      imagePath: 'lib/images/cafe_chiapas.png',
    ),

    //coffe of guerrero
    Coffee(
      name: 'Coffe of Guerrero',
      price: '3.95',
      imagePath: 'lib/images/cafe_oaxaca.png',
    ),

    //coffe of oaxaca
    Coffee(
      name: 'Coffe of Oaxaca',
      price: '3.95',
      imagePath: 'lib/images/cafe_guerrero.png',
    ),

    //coffe of veracruz
    Coffee(
      name: 'Coffe of Veracruz',
      price: '3.95',
      imagePath: 'lib/images/cafe_veracruz.png',
    ),
  ];

  //user cart
  final List<Coffee> _userCart = [];

  //get coffe list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to a cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from a cart
  void removeFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
