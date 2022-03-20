import 'package:flutter/material.dart';

class PersonPro extends StatelessWidget {
  const PersonPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _builStack(),
            _buildCard(),
            _buildPacking()
          ],
        ),
      ),
    );
  }
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

class TapStar extends StatefulWidget{
  const TapStar({Key? key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapStar> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Icon(Icons.star,color: _active? Colors.yellow : Colors.white),
    );
  }
}

Widget _buildPacking() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      TapStar(),
      TapStar(),
      TapStar(),
      TapStar(),
      TapStar(),
    ],
  );
}
