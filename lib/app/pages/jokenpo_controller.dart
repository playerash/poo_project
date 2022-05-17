import 'dart:math';

import 'package:flutter/cupertino.dart';

class JokenpoController extends ChangeNotifier {
  // 0 - vazio
  // 1 - pedra
  // 2 - papel
  // 3 - tesoura
  int _playerStatus = 0;
  int _cpuStatus = 0;
  String _status = "Selecione:";
  String _statusImage = "assets/padrao.png";

  int get playerStatus => _playerStatus;
  String get status => _status;
  String get statusImage => _statusImage;

  setPlayerStatus(int value) {
    _playerStatus = value;
    setCPUStatus();
    setStatus();
    notifyListeners();
  }

  setCPUStatus() {
    _cpuStatus = Random().nextInt(3);
    if (_cpuStatus == 0) {
      setCPUStatus();
    } else if (_cpuStatus == 1) {
      _statusImage = "assets/pedra.png";
    } else if (_cpuStatus == 2) {
      _statusImage = "assets/papel.png";
    } else {
      _statusImage = "assets/tesoura.png";
    }

    notifyListeners();
  }

  setStatus() {
    if (_playerStatus == 3) {
      if (_cpuStatus == 3) {
        _status = "Empate";
      } else if (_cpuStatus == 1) {
        _status = "Derrotado";
      } else {
        _status = "Vitória";
      }
    } else if (_playerStatus == 2) {
      if (_cpuStatus == 2) {
        _status = "Empate";
      } else if (_cpuStatus == 3) {
        _status = "Derrotado";
      } else {
        _status = "Vitória";
      }
    } else if (_playerStatus == 1) {
      if (_cpuStatus == 1) {
        _status = "Empate";
      } else if (_cpuStatus == 2) {
        _status = "Derrotado";
      } else {
        _status = "Vitória";
      }
    }
    notifyListeners();
  }
}
