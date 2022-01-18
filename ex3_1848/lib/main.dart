import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class Pet extends StatelessWidget {
  final String name;
  final String image;
  const Pet(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 220),
      child: Column(
        children: [
          DecoratedBox(decoration: const BoxDecoration(color: Colors.pinkAccent),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
              child: Text(name),
            ),),
          Image(image: NetworkImage(image),height: 150,width: 120,),
          const SizedBox(height: 50.0, width: 5.0,),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Pet App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('My Pet App'),
          ),
          body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Pet("Dragon", "https://www.pngkit.com/png/detail/259-2599394_report-abuse-dragon-cgi.png"),
                  Pet("Monkey", "https://www.beartai.com/wp-content/uploads/2017/07/dawn-planet-apes-1200-1200-675-675-crop-000000-1024x576.jpg"),
                  Pet("Snake", "https://www.hdnicewallpapers.com/Walls/Big/Snake/Different_Style_of_Snake_Wallpaper.jpg"),
                ],
              )
          ),
        )
    );
  }
}