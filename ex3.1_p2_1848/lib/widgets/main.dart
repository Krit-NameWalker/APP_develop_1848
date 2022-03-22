import 'package:flutter/material.dart';
import './home_routes.dart';
import './main_return.dart';
import 'package:ex3_1_p2_1848/widgets/quest_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Krit Lekunjira",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstScreen(),
        "/second": (context) => const QuestInfo(),
        "/restart": (context) => const RestartScreen(),
      },
    );
  }
}
