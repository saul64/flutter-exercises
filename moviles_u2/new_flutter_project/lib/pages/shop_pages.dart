import 'package:flutter/material.dart';
import 'package:new_flutter_project/components/coffee_tile.dart';
import 'package:new_flutter_project/models/coffee.dart';
import 'package:new_flutter_project/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopPages extends StatefulWidget {
  const ShopPages({super.key});

  @override
  State<ShopPages> createState() => _ShopPagesState();
}

class _ShopPagesState extends State<ShopPages> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder:
          (context, value, child) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    'Selecciona el caffe de tu gusto',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.coffeeShop.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffe = value.coffeeShop[index];

                        //return
                        return CoffeeTile(
                          coffee: eachCoffe,
                          onPressed: () => addToCart(eachCoffe),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
