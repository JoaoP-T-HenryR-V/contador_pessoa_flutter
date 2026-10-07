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
          Text("Pode entrar!",
          style: TextStyle(
            fontSize: 26,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w900,
          ),
          ),
          const Padding(padding: EdgeInsets.all(40),
          child: Text("0",
          style: TextStyle(
            fontSize: 100,
            color: Colors.blueAccent,
          ),
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              child: Text("Sair",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16
              )
              )
              ),
              SizedBox(width: 32),
              TextButton(onPressed: increment,
               style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
              ),
              child: Text("Entrar",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16
              ),))
            ],
          )
        ],
      )
    );
  }
}
