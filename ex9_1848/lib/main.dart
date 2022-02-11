import 'package:flutter/material.dart';
import 'package:ex9_1848/app_screens/long_list.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Basic List View Demo",
          home: Scaffold(
              appBar: AppBar(
                title: const Text("Widgets Exercise"),
              ),
              body: getListView()
          )
      )
  );
}
