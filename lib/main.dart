import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()
  );
}

// atalho para criar widget -> stless
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
//chamando container
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Text("Bem vindo!",
          style: TextStyle(
            fontSize: 50,
            color: Colors.yellow,
            fontWeight: FontWeight.w900,
          ),
          ),
          Text("Fique à vontade",
          style: TextStyle(
            fontSize: 35,
            color: Colors.green,
            fontWeight: FontWeight.w700,
          ),
          ),
        ],
      )
    );
  }
}
