import 'package:flutter/material.dart';

class NewHabit extends StatefulWidget {

  final Function(String, String) submitHabit;

  const NewHabit({super.key, required this.submitHabit});

  @override
  State<NewHabit> createState() => _NewHabitState();
}

class _NewHabitState extends State<NewHabit> {

  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _desCtrl = TextEditingController();

  void submit() {
    final name = _nameCtrl.text;
    final desc = _desCtrl.text;

    if(name.isNotEmpty && desc.isNotEmpty){
      //Guardar esos valores
      widget.submitHabit(name, desc);
      Navigator.pop(context); 
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nuevo hábito"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
              TextField(
              controller: _nameCtrl,
              decoration: const InputDecoration(
                labelText: "Nombre del hábito"
              ),
            ),
              TextField(
              controller: _desCtrl,
              decoration: const InputDecoration(
                labelText: "Descripción"
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
            onPressed: submit, 
            child: const Text("Agregar")
          ),
          ],
        ),
      ),
    );
  }
}