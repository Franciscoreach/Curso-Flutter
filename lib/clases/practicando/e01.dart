
import 'dart:developer';
import 'package:flutter/material.dart';

class Example01 extends StatefulWidget {
  const Example01({super.key});

  @override
  State<Example01> createState() => _Example01State();
}

class _Example01State extends State<Example01> {

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    log("Contador: $contador");
    return Material(
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
            children: [
              Text(
                'Contador: $contador',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      contador++;
                    });
                  }, 
                  child: const Text("Sumar")
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      contador--;
                    });
                  }, 
                  child: const Text("Restar")
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
