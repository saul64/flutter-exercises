import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BottomNavigationCustomBar extends StatelessWidget {

 final void Function(int)? onTabChange;
  const BottomNavigationCustomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: onTabChange,
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabBorderRadius: 20,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs : [
        GButton(icon: Icons.home, text: 'Tienda'),
        GButton(icon: Icons.shopping_cart, text: 'Carrito'),
      ]),
    );
  }
}