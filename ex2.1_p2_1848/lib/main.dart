import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krit Lekunjira',
      home: Scaffold(
        body: PersonPro(),
      ),
    );
  }
}

class PersonPro extends StatelessWidget {
  const PersonPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: screenW <= 600
      ? AppBar(title: const Text('My Favorite Celeb'),) : null,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideScreenContontainers();
          } else {
            return _buildPortraitContainer();
          }
        },
      ),
    );
  }
}

Widget _buildWideScreenContontainers() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _builStack(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildCard(),
            _buildPacking(),
          ],
        ),
      ],
    ),
  );
}

Widget _buildPortraitContainer() {
  return Center(
    child: Column(
      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      children: [
        _builStack(),
        _buildCard(),
        _buildPacking()
      ],
    ),
  );
}

Widget _builStack() {
  return Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      const CircleAvatar(
        backgroundImage: NetworkImage('https://api.time.com/wp-content/uploads/2017/02/john-wick-2-keanu-reeves1.jpg?w=824&quality=70'),
        radius: 140,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Colors.black45,
        ),
        child: const Text(
          'Keanu Reeves',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _buildCard() {
  return SizedBox(
    height: 210,
    width: 280,
    child: Card(
      child: Column(
        children: const [
          ListTile(
            title: Text(
              "Keanu's Place",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('Los Angeles, California (CA), US'),
            leading: Icon(
              Icons.apartment,
              color: Colors.blue,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              '(310) 285-9000',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('keanu@hotmanever.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildPacking() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.star, color: Colors.green,),
      Icon(Icons.star, color: Colors.green,),
      Icon(Icons.star, color: Colors.green,),
      Icon(Icons.star, color: Colors.green,),
      Icon(Icons.star, color: Colors.black,),
    ],
  );
}
