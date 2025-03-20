import 'package:flutter/material.dart';
import 'package:new_flutter_project/components/bottom_navigation_custom_bar.dart';
import '../constants/constants.dart';
import 'cart_pages.dart';
import 'shop_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigate bottom bar
  int _selectedIndex = 0;

  void navigationBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop pages
    ShopPages(),

    //cart pages
    CartPages(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigationCustomBar(
        onTabChange: (index) => navigationBottomBar(index) ,
      ),

      body: _pages[_selectedIndex],
    );
  }
}