import 'package:flutter/material.dart';
import 'package:ex1_2_p2_1848/choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Krit Lekunjira",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Choice(),
    );
  }
}