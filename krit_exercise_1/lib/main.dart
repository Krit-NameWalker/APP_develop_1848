import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Favorite Quote',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'My Favorite Quote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: NetworkImage(
                "https://scontent.fbkk14-1.fna.fbcdn.net/v/t39.30808-6/p180x540/217767518_358836745606103_1541004150575612771_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=wJEd-uUXw8AAX8VRkKa&_nc_ht=scontent.fbkk14-1.fna&oh=00_AT_tGD-1maKMSiFZbGhSzrAXk-3sGUzqQ8VJEBEHQGDQHw&oe=61CFAED0"),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 50,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Expanded(
                    child: Text(
                      "Marie",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Curie",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}