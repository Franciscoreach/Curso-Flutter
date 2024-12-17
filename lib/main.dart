import 'package:flutter/material.dart';
//import 'package:mi_primera_app/clases/my_widgets.dart';
//import 'package:mi_primera_app/clases/nav/page1.dart';
//import 'package:mi_primera_app/clases/practicando/e01.dart';
import 'package:mi_primera_app/menu.dart';
import 'package:mi_primera_app/todo_provider/todo_provider.dart';
import 'package:provider/provider.dart';
//import 'package:mi_primera_app/estados.dart';
//import 'package:mi_primera_app/clases/nav/page1.dart';


void main() {
  runApp(
    //Se cambio para poder usar Provider 
    ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: const MaterialApp(
      home: Menu(),
      ),
    ),
  );
}
