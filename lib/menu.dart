import 'package:flutter/material.dart';
import 'package:mi_primera_app/audio_player/audio_player.dart';
import 'package:mi_primera_app/audio_player/audio_player2.dart';
//import 'package:mi_primera_app/audio_player/audio_playerV2.dart';
import 'package:mi_primera_app/entradas_de_datos/in_datos.dart';
import 'package:mi_primera_app/galeria_imagenes/galeria_imagenes.dart';
import 'package:mi_primera_app/gestor-habitos/home-hab.dart';
import 'package:mi_primera_app/todo_bloc/todo_bloc2.dart';
import 'package:mi_primera_app/todo_bloc/todo_bloc1.dart';
import 'package:mi_primera_app/todo_provider/todo_provider.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(32),
        children: [
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomeHabitosPage(),
            ),
          );
        },
          child: const Text("Gestor de Habitos")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const InDatos(),
            ),
          );
        },
          child: const Text("Widgets de entrada de datos")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const GaleriaImagenes(),
            ),
          );
        },
          child: const Text("Galeria de imagenes")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AudioPlayerPage(),
            ),
          );
          },
          child: const Text("Reproductor de Audio")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AudioPlayer25(),
            ),
          );
          },
          child: const Text("Movie Streaming")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ToDoProvider(),
            ),
          );
          },
          child: const Text("Todo - Provider")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TodoBloc(),
            ),
          );
          },
          child: const Text("Todo - Bloc")
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const TodoBloc2(),
            ),
          );
          },
          child: const Text("Todo - Bloc Provider")
        ),
        ],
        ),
      ),
    );
  }
}