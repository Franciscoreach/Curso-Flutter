import 'package:flutter/material.dart';
import 'package:mi_primera_app/gestor-habitos/new__habit.dart';

class HomeHabitosPage extends StatefulWidget {

  const HomeHabitosPage({super.key});

  @override
  State<HomeHabitosPage> createState() => _HomeHabitosPageState();
}
  //Escritura de datos
  //Lectura de datos
  // initState --> Leer si tenemos informacion almacenada



class _HomeHabitosPageState extends State<HomeHabitosPage> {
  final List<Habit> habits = [];

  void _addHabit(String name, String desc) {
    setState(() {
      habits.add(Habit(name: name, description: desc)); // Agregar el hábito a la lista
    });
  }

  void changeStatus(int index) {
    setState(() {
      habits[index].isComplete = !habits[index].isComplete; // Alternar el estado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestor de habitos"),
      ),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          String _name = habits[index].name;
          String _desc = habits[index].name;
          bool   isComplete = habits[index].isComplete;

          return ListTile(
            onTap: (){
              changeStatus(index);
            },
            title: Text(_name),
            subtitle: Text(_desc),
            trailing: isComplete
            ? const Icon(
              Icons.check_circle,
              color: Colors.green,
            )
            : const Icon(Icons.circle_outlined)
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewHabit(
                submitHabit: _addHabit,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


//Se puede realizar con un "enum"

// enum HabitState{
//   initial,
//   loading,
//   failure,
//   complete,
// }

class Habit{
  String name;
  String description;
  bool isComplete;

  Habit({
    required this.name,
    required this.description,
    this.isComplete = false,
  });

  @override
  String toString() {
    return "name: $name, description: $description, isComplete: $isComplete";
  }


}