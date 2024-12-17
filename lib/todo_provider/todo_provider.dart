import 'package:flutter/material.dart';
import 'package:mi_primera_app/class/task.dart';
import 'package:provider/provider.dart';

//Primero
class TaskProvider extends ChangeNotifier{
  List<Task> _tasks = [];

  addTask(String title){
    _tasks.add(
      Task(title: title),
    );
    notifyListeners();
  }

  updateStatus(int index){
    _tasks[index].isComplete = !_tasks[index].isComplete;
    notifyListeners();
  }

}

class ToDoProvider extends StatelessWidget {
  const ToDoProvider({super.key});

  @override
  Widget build(BuildContext context) {

    final taskProvider = Provider.of<TaskProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Provider"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: taskProvider._tasks.length,
            itemBuilder: (BuildContext context, int index) {

              final task = taskProvider._tasks[index];

              return ListTile(
                title: Text(
                  task.title,
                  style: TextStyle(
                    decoration: task.isComplete ? TextDecoration.lineThrough: TextDecoration.none,
                  ),
                ),
                trailing: Checkbox(
                  value: task.isComplete,
                  onChanged: (value) => taskProvider.updateStatus(index),
                  ),
                );
              },
            ),
          ),
          TodoInputText(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}


// Cambiar a carpeta de Widget

class TodoInputText extends StatelessWidget {

  final TextEditingController _ctrl = TextEditingController();

  TodoInputText({super.key});

  _addTask(BuildContext context){
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    if(_ctrl.text.isNotEmpty){
      taskProvider.addTask(_ctrl.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(
          controller: _ctrl,
          decoration: const InputDecoration(
            labelText: "Nueva tarea",
          ),
        )),
        ElevatedButton(
          onPressed: () => _addTask(context), 
          child: const Text("Agregar")
        ),
      ],
    );
  }
}