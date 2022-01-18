import 'package:flutter/material.dart';
import 'flight_image.dart';
import 'flifht_bookbutton.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 40.0,
            ),
            alignment: Alignment.center,
            color: Colors.red,
            //width: 200.0,
            //height: 100.0,
            //margin: const EdgeInsets.all(100.0),
            child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Expanded(child:
                      Text("Krit Lekunjira",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Mali',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.greenAccent
                          ))),
                      Expanded(child:
                      Text("623040184-8",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Mali',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.greenAccent
                          ))),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: Row(
                          children: const <Widget>[
                            Expanded(child:
                            Text("Photo Credit:",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Mali',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.lightBlueAccent
                                ))),
                            Expanded(child:
                            Text("DeathWish",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Mali',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.lightBlueAccent
                                ))),
                          ]
                      )),
                  const FlightImageAsset(),
                  const FlightBookButton()
                ]
            )
        )
    );
  }
}