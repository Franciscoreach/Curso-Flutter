import 'package:flutter/material.dart';
import 'dart:developer';

class Estados extends StatefulWidget {
  const Estados({super.key});

  @override
  State<Estados> createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    log("build");
    log("contador: $contador");
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
            child : Column(
              children: [
                Text(
                "Contador $contador",
                ),
                ElevatedButton(onPressed: () {
                  setState(() {
                    contador++;
                  });
                }, 
                child: const Text("Sumar"),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    contador--;
                  });
                },
                child: const Text("Restar")
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}