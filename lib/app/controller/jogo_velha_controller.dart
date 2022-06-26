import 'package:flutter/cupertino.dart';

enum JogoVelhaStatus { bola, xis, vazio }

// 123
// 456
// 789
class JogoVelhaController extends ChangeNotifier {
  List player1 = [];
  List player2 = [];
  JogoVelhaStatus whosPlay = JogoVelhaStatus.xis;
  String statusGame = "";

  setWhosPlay() {
    if (whosPlay == JogoVelhaStatus.xis) {
      whosPlay = JogoVelhaStatus.bola;
    } else {
      whosPlay = JogoVelhaStatus.xis;
    }
    notifyListeners();
  }

  addNumberPlayer1(number) {
    player1.add(number);
    if (verifyWinner(player1)) {
      statusGame = "Bola Ganhou!!";
    }
  }

  addNumberPlayer2(number) {
    player2.add(number);
    if (verifyWinner(player2)) {
      statusGame = "Xis Ganhou!!";
    }
  }

  bool verifyWinner(List player) {
    if ((player.contains(1) && player.contains(2) && player.contains(3)) ||
        player.contains(4) && player.contains(5) && player.contains(6) ||
        player.contains(7) && player.contains(8) && player.contains(9) ||
        player.contains(1) && player.contains(4) && player.contains(7) ||
        player.contains(2) && player.contains(5) && player.contains(8) ||
        player.contains(3) && player.contains(6) && player.contains(9) ||
        player.contains(1) && player.contains(5) && player.contains(9) ||
        player.contains(3) && player.contains(5) && player.contains(7)) {
      return true;
    } else {
      return false;
    }
  }
}
