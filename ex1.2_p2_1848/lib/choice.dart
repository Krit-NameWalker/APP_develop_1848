import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String name;
  final Color shee;
  const Answer(this.name, this.shee);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(20.0),
      color: shee,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}

class Choice extends StatelessWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: screenW <= 600
          ? AppBar(
        title: const Text("MobileApp"), backgroundColor: Colors.redAccent,)
          : null,
      body: _Screen(),
    );
  }
}

Widget _Screen() {
  return Center(
    child: Container(
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [
          const Text(
            "What is this picture?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.pinkAccent),
          ),
          const Expanded(
            child: Image(image: NetworkImage(
                "https://www.thesun.co.uk/wp-content/uploads/2021/02/CH-OFF-PLAT-DOG-SNOW.jpg?strip=all&quality=100&w=1200&h=800&crop=1"),
                height: 350,width: 350)
            ),
          _RowChoices(),
        ],
      ),
    ),
  );
}

Widget _RowChoices() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget> [
          Answer("Dog",Colors.orange),
          Answer("Person",Colors.purple),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget> [
          Answer("Both",Colors.pink),
          Answer("No Answer",Colors.blue),
        ],
      ),
    ],
  );
}