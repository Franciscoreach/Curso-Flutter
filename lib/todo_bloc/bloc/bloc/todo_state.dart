part of 'todo_bloc.dart';

//Borrar Sealed
class TodoState extends Equatable {
  //siempre declarar como final
  final List<Task> tasks;

  const TodoState({
      required this.tasks,
    });

  factory TodoState.initial(){
    return TodoState(
      tasks: List.empty(),
    );
  }

  TodoState copyWith({
    List<Task>? tasks,
  }) {
    return TodoState(
      tasks: tasks ?? this.tasks,
    );
  }
  
  @override
  List<Object> get props => [tasks];
}
