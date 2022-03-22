import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Choice extends StatefulWidget {
  const Choice({Key? key, required this.num, required this.info}) : super(key: key);

  final int num;
  final Map<dynamic , dynamic> info;

  @override
  State<Choice> createState() => _ChoiceState();
}

class TapEx extends StatefulWidget {
  final String name;
  final Color shee;
  final bool answer;
  final num;
  final info;
  const TapEx({Key? key, required this.name, required this.shee, required this.answer, required this.num, required this.info}) : super(key: key);

  @override
  _TapExState createState() => _TapExState();
}

class _TapExState extends State<TapEx> {
  bool _active = false;
  var Score = "";
  var Function;
  Widget? nextQuest;
  Color _activecolor = Colors.red.shade800;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });

    nextQuest = Choice(num: widget.num + 1, info: widget.info);
    if (widget.answer == true) {
      _activecolor = Colors.green;
      Score = ("Congrats, you get 1 point");
      if (widget.num < widget.info.length) {
        Function = ElevatedButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => nextQuest ?? Container()));
          },
        );
      }
      else {
        Function = ElevatedButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.pushNamed(context, "/restart");
          },
        );
      }
    }
    else {
      Score = ("Sorry, you miss it!");
      Function = ElevatedButton(
        child: const Text("OK"),
        onPressed: () {
          Navigator.pushNamed(context, "/restart");
        },
      );
    }
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Score!"),
            content: Text(Score),
            actions: <Widget>[Function],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 170,
        margin: const EdgeInsets.only(bottom: 10, top: 5, right: 20, left: 20),
        child: DecoratedBox(decoration: BoxDecoration(
            color: _active ? _activecolor : widget.shee),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 20),
            child: Text(widget.name, textAlign: TextAlign.center),
          ),),
      ),
    );
  }
}

class _ChoiceState extends State<Choice> {
  late String question;
  late String title;
  late String imgUrl;
  late String Ex_1;
  late String Ex_2;
  late String Ex_3;
  late String Ex_4;
  late bool Ex_1_check;
  late bool Ex_2_check;
  late bool Ex_3_check;
  late bool Ex_4_check;
  bool previous = false;
  Widget? nextQuest;

  @override
  void initState() {
    super.initState();
    question = widget.info[widget.num]["question"];
    title = widget.info[widget.num]["title"];
    imgUrl = widget.info[widget.num]["imgUrl"];
    Ex_1 = widget.info[widget.num]["Ex_1"];
    Ex_2 = widget.info[widget.num]["Ex_2"];
    Ex_3 = widget.info[widget.num]["Ex_3"];
    Ex_4 = widget.info[widget.num]["Ex_4"];
    Ex_1_check = widget.info[widget.num]["Ex_1_check"];
    Ex_2_check = widget.info[widget.num]["Ex_2_check"];
    Ex_3_check = widget.info[widget.num]["Ex_3_check"];
    Ex_4_check = widget.info[widget.num]["Ex_4_check"];

    if (widget.num > 1 && widget.num <= widget.info.length) {
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextQuest = Choice(num: widget.num + 1, info: widget.info);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Flutter Exercise by Krit Lekujira'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                  question,
                  style: const TextStyle(color: Colors.pink, fontSize: 25)
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(imgUrl),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: TapEx(name: Ex_1,shee: Colors.orange, answer: Ex_1_check, num: widget.num, info: widget.info),),
                  Expanded(child: TapEx(name: Ex_2,shee: Colors.purple, answer: Ex_2_check, num: widget.num, info: widget.info),),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: TapEx(name: Ex_3,shee: Colors.pink, answer: Ex_3_check, num: widget.num, info: widget.info),),
                  Expanded(child: TapEx(name: Ex_4,shee: Colors.blue, answer: Ex_4_check, num: widget.num, info: widget.info),),
                ],),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Visibility(
                        visible: previous,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text("Previous"),
                        ),),),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        child: const Text("Home"),
                      ),),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Visibility(
                        visible: nextQuest != null,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => nextQuest ?? Container())),
                          child: const Text("Next"),
                        ),),),
                  ],),),
            ],
          ),
        ),
      ),
    );
  }
}