import 'package:flutter/material.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        SliverAppBar(
          expandedHeight: 100,
          backgroundColor: Colors.purpleAccent,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sliver", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Roboto",  color: Colors.white)),
                Text("desde Pantalla Settings",  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Roboto", color: Colors.white))
              ],
            ),
          ),
        )
      ],
      
    );
  }
}