import 'package:flutter/material.dart';
import 'package:projeto/components/task.dart';
import 'package:projeto/data/task_inherited.dart';
import 'package:projeto/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    
    return TaskInherited(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text('Tarefas'),
        ),
        body: ListView(
          children: TaskInherited.of(context).taskList,

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contextNew) => FormScreen(taskContext: context,),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
