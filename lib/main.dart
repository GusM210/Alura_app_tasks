import 'package:flutter/material.dart';
import 'package:projeto/data/task_inherited.dart';
import 'package:projeto/screens/form_screen.dart';
import 'package:projeto/screens/initial_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: TaskInherited(child: const InitialScreen()),
      );
    }
  }
