import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()
  );
}

// atalho para criar widget -> stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

   int contador = 0;

  void decrement(){
    contador --;
    print(contador);
  }
  void increment(){
    contador ++;
    print(contador);
  }

  
//chamando container
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/imagem.jpg'),
              fit: BoxFit.cover,
              )
          ),
          child: Column(
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
            child: Text( 'contador.toString()',
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
      )
    );
  }
}
