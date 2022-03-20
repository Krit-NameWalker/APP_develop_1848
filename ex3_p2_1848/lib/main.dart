import 'package:flutter/material.dart';
import 'package:ex3_p2_1848/faculties_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krit Lekunjira',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FacultyList(),
      debugShowCheckedModeBanner: false,
    );
  }
}