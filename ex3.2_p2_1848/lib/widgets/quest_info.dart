import 'package:flutter/material.dart';
import '../widgets/choice_quest.dart';

class QuestInfo extends StatefulWidget {
  const QuestInfo({Key? key}) : super(key: key);

  @override
  State<QuestInfo> createState() => _QuestInfoState();
}

class _QuestInfoState extends State<QuestInfo> {
  var prezInfo = {
    1: {
      "question": "What is this character?",
      "title": "EX1",
      "imgUrl": "https://static.wikia.nocookie.net/villains/images/3/36/Spy_Red.png/revision/latest?cb=20200405040417",

      "Ex_1": "Spy",
      "Ex_1_check": true,

      "Ex_2": "Sombra",
      "Ex_2_check": false,

      "Ex_3": "Skye",
      "Ex_3_check": false,

      "Ex_4": "No Answer",
      "Ex_4_check": false,
    },

    2: {
      "question": "What is this character?",
      "title": "EX2",
      "imgUrl": "https://static.wikia.nocookie.net/overwatch_gamepedia/images/c/c5/Sombra-portrait.png/revision/latest?cb=20161104214348",

      "Ex_1": "Spy",
      "Ex_1_check": false,

      "Ex_2": "Sombra",
      "Ex_2_check": true,

      "Ex_3": "Skye",
      "Ex_3_check": false,

      "Ex_4": "No Answer",
      "Ex_4_check": false,
    },

    3: {
      "question": "What is this character?",
      "title": "EX3",
      "imgUrl": "https://static.wikia.nocookie.net/paladins/images/a/ae/Skye.png/revision/latest?cb=20190427214230&path-prefix=de",

      "Ex_1": "Spy",
      "Ex_1_check": false,

      "Ex_2": "Sombra",
      "Ex_2_check": false,

      "Ex_3": "Skye",
      "Ex_3_check": true,

      "Ex_4": "No Answer",
      "Ex_4_check": false,
    },
  };

  @override
  Widget build(BuildContext context) {
    return Choice(num: 1, info: prezInfo);
  }
}