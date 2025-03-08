import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends  State<HomeScreen>{

  int count = 0;

  void incrementCounter(){
    setState(() {
      count++;
    });
  }

  void decrementCounter(){
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My app"),
        centerTitle: true,
        leading: const Icon(Icons.home, color: Colors.black, size: 40),
        backgroundColor: const Color.fromARGB(255, 66, 165, 245),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Contador: $count', 
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          ElevatedButton(onPressed: incrementCounter, child: const Text("Incrementar")),
          ElevatedButton(onPressed: decrementCounter, child: const Text("Decrementar"))
        ],
      ),
    );
  }
}
