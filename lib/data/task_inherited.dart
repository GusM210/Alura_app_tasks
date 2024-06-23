import 'package:projeto/components/task.dart';
import 'package:flutter/material.dart';


class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task('Aprender flutter', 'assets/images/Flutter.png', 3),
    Task('Andar de bike', 'assets/images/Bike.jpeg', 2),
    Task('Meditar', 'assets/images/Meditar.jpeg', 5),
    Task('Jogar', 'assets/images/Jogar.jpg', 1),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
