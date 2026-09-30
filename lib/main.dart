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

  void decrement(){ print("decrement"); }
  void increment(){ print("increment"); }
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              child: Text("Sair")
              ),
              TextButton(onPressed: increment,
              child: Text("Entrar"))
            ],
          )
        ],
      )
    );
  }
}
