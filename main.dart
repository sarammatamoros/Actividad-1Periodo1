import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Mi personaje favorito',style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Image(image: NetworkImage('https://i.pinimg.com/564x/9a/26/cf/9a26cf58279ea0666216620ddc0d1514.jpg')),
            ),
            Text('Tanjiro Kamado', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
