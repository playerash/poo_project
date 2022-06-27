import 'dart:math';

import 'package:flutter/material.dart';

class ParImparController extends ChangeNotifier {
  int cpuNumber = 0;
  int playerNumber = 0;
  String statusGame = "Selecione:";
  int playerParImpar = 0;
  int statusParImpar = 0;

  setPlayerParImpar(int number) {
    playerParImpar = number;
    notifyListeners();
  }

  setPlayerNumber(int number) {
    playerNumber = number;
    _setCPUNumber();
    _setStatusGame();
    notifyListeners();
  }

  _setCPUNumber() {
    cpuNumber = Random().nextInt(9);
  }

  _setStatusGame() {
    if ((cpuNumber + playerNumber) % 2 == 0) {
      statusParImpar = 2;
    } else {
      statusParImpar = 1;
    }
  }
}
