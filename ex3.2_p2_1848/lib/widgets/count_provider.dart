import 'package:flutter/material.dart';

class CountTotalScore extends ChangeNotifier {
  int count = 0;
  String countscore = "";

  get _count => count;

  void CheckScore(num) {
    if (num == true) {
      count += 1;
      countscore = "Your total score is $count";
      notifyListeners();
    }
    else {
      countscore = "Sorry you miss it!";
      notifyListeners();
    }
  }

  void ResetScore() {
    count = 0;
    notifyListeners();
  }
}