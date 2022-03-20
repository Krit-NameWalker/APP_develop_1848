import 'package:flutter/material.dart';
import 'package:ex2_p2_1848/person_profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krit Lekunjira',
      home: Scaffold(
        body: PersonPro(),
      ),
    );
  }
}