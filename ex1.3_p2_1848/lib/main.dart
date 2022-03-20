import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class TapEx extends StatefulWidget {
  final String name;
  final Color shee;
  final bool answer;
  const TapEx({Key? key, required this.name, required this.shee, required this.answer}) : super(key: key);

  @override
  _TapExState createState() => _TapExState();
}

class _TapExState extends State<TapEx> {
  bool _active = false;
  bool _activescore = false;
  Color _activecolor = Colors.red.shade800;
  String _activetext = "Your score is 0";

  void _handleTap() {
    setState(() {
      _active = !_active;
      _activescore = !_activescore;
    });
    if (widget.answer == true) {
      _activecolor = Colors.green;
      _activetext = "Your score is 1";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _activescore ? null
          : () {
        _handleTap();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(_activetext),
          duration: const Duration(seconds: 1),
        ));
      },
      child: Container(
        width: 170,
        margin: const EdgeInsets.only(bottom: 30, top: 10),
        child: DecoratedBox(decoration: BoxDecoration(
            color: _active ? _activecolor : widget.shee),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 20),
            child: Text(widget.name, textAlign: TextAlign.center),
          ),),
      ),
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
                    TapEx(name: "Dog",shee: Colors.orange, answer: false),
                    TapEx(name: "Person",shee: Colors.purple, answer: false),],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TapEx(name: "Both",shee: Colors.pink, answer: true),
                    TapEx(name: "No Answer",shee: Colors.blue, answer: false),],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}