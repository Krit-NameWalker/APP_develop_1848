import 'dart:ui';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 160, bottom: 50),
          child: Column(
            children: [
              Expanded(
                child:
                Image.asset("image/quiz.jpg", width: 250,),
              ),
              const Text("Welcome to the Quiz App",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold),),
              const Text("By Krit Lekunjira 623040184-8",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink)),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/second");
                  },
                  child: const Text("Start"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Home"),
        ),
      ),
    );
  }
}