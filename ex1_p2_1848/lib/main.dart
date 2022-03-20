import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Ex extends StatelessWidget {
  final String name;
  final Color shee;
  const Ex(this.name, this.shee);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(bottom: 30, top: 10),
      child:
          DecoratedBox(decoration: BoxDecoration(color: shee),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              child: Text(name, textAlign: TextAlign.center),
            ),),
      );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Krit Lekunjira",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Flutter Exercise by Krit Lekujira'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
              const Text("What is this picture?", style: TextStyle(color: Colors.pink, fontSize: 25)),
              const Image(image: NetworkImage(
                      "https://www.thesun.co.uk/wp-content/uploads/2021/02/CH-OFF-PLAT-DOG-SNOW.jpg?strip=all&quality=100&w=1200&h=800&crop=1"),
                  height: 300,width: 300),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                  Ex("Dog",Colors.orange),
                  Ex("Person",Colors.purple),],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                  Ex("Both",Colors.pink),
                  Ex("No Answer",Colors.blue),],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}