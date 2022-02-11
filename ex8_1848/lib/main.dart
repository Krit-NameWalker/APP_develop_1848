import 'package:flutter/material.dart';
import 'package:ex8_1848/app_screens/basic_listview.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Basic List View Demo",
        home: Scaffold(
          appBar: AppBar(
              title: const Text("Widgets Exercise")
          ),
          body: const BasicListView(),
        ),
      )
  );
}

