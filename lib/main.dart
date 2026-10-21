
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget principal do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void decrement() {
    setState(() {
      contador--;
    });
  }

  void increment() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/imagem.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Oi posso entrar?",
              style: TextStyle(
                fontSize: 26,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w900,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                contador.toString(),
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.blueAccent,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                    "Sair",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),

                const SizedBox(width: 32),

                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
