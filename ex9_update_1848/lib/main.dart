import 'package:flutter/material.dart';
import 'package:ex10_1848/app_screens/fab_demo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FAB Demo",
      home: FAB(),
    );
  }
}

class FAB extends StatefulWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  _FABDemoState createState() => _FABDemoState();
}

class _FABDemoState extends State<FAB> {
  int counter = 30;

  void _listCounter() {
    setState(() {
      counter++;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Current number of problems is $counter"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Exercise"),
      ),
      body: getListView(counter),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        tooltip: "Add One More Problem",
        backgroundColor: Colors.green,
        onPressed: _listCounter,
      ),
    );
  }
}


