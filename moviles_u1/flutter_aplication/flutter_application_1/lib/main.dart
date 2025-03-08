import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          leading: Icon(Icons.home, color: Colors.black, size: 60),
          backgroundColor: Color.fromARGB(152,216,239,1),
        ),
        body: Container(
          width: double.infinity,
          color: Color(0xff33FFDA),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7YMHtkcGzhlp4XRYnfbYsVULmOr5Jd_nGg&s', fit: BoxFit.fitHeight),
            
                Image.network('https://mallasymascotas.com/wp-content/uploads/2021/08/5-tipos-de-personalidad-de-los-gatos.jpg'),
            
                Image.network('https://i.gifer.com/75B.gif', fit: BoxFit.fitHeight),
            
                Image.network('https://i.gifer.com/4SHX.gif', fit: BoxFit.fitHeight),
            
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7YMHtkcGzhlp4XRYnfbYsVULmOr5Jd_nGg&s', fit: BoxFit.fitHeight),
                Text('Otto', 
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ),
    );
  }
}