import 'package:flutter/material.dart';
import 'package:new_flutter_project/models/coffee.dart';
import 'package:new_flutter_project/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartPages extends StatefulWidget {
  const CartPages({super.key});

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Column(
          children: [
            const Text('Tu carrito tiene:', style: TextStyle(fontSize: 20)),
            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length, 
                itemBuilder: (context, index) {
                  Coffee eachCoffee = value.userCart[index]; // Obtener del carrito

                  return ListTile(
                    title: Text(eachCoffee.name),
                    subtitle: Text('\$${eachCoffee.price}'),
                    leading: Image.asset(eachCoffee.imagePath),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_shopping_cart),
                      onPressed: () => removeFromCart(eachCoffee),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

