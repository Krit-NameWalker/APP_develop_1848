import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count_provider.dart';

class RestartScreen extends StatelessWidget {
  const RestartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CountTotalScore>(builder: (context, provider, child) {
      return Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(
                top: 300, right: 20, left: 20),
            child: Column(
              children: [
                Text("Your total score is ${provider.count}",
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold),),
                ElevatedButton(
                  child: const Text("Restart"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                    provider.ResetScore();
                  },),
              ],),),
        ),
      );
    });
  }
}