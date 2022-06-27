import 'package:flutter/material.dart';
import 'package:poo_project/app/controller/jogo_velha_controller.dart';
import 'package:poo_project/app/pages/jogo_velha/square_jogo_velha.dart';
import 'package:provider/provider.dart';

class JogoVelha extends StatelessWidget {
  const JogoVelha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    JogoVelhaController _jogoVelhaController =
        Provider.of<JogoVelhaController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(children: const [
              SquareJogoVelha(1),
              SquareJogoVelha(2),
              SquareJogoVelha(3),
            ]),
            Row(children: const [
              SquareJogoVelha(4),
              SquareJogoVelha(5),
              SquareJogoVelha(6),
            ]),
            Row(children: const [
              SquareJogoVelha(7),
              SquareJogoVelha(8),
              SquareJogoVelha(9),
            ]),
            Text(_jogoVelhaController.statusGame)
          ],
        ),
      ),
    );
  }
}
