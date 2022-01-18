import 'package:flutter/material.dart';

class MyName extends StatelessWidget {
  const MyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 270,
            bottom: 270,
            left: 50,
            right: 50,
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.red[900],),
          child: const Text(
              "กฤษฎิ์ เลกุลจิรา",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Mali',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              )),
        )
    );
  }
}