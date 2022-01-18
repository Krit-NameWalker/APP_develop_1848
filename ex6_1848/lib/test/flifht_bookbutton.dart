import 'package:flutter/material.dart';

class FlightBookButton extends StatelessWidget {
  const FlightBookButton({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text("Confirmation"),
      content: Text("Submitting information")
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.lightGreen,
          padding: const EdgeInsets.all(12),
          textStyle: const TextStyle(fontSize: 30),
        ),
        child: const Text("Submit",
          style: TextStyle(color: Colors.deepOrange)),
        onPressed: () => {
          alertMsg(context)
        }
      ),
    );
  }
}