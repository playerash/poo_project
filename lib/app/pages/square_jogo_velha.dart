import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/app/controller/jogo_velha_controller.dart';
import 'package:provider/provider.dart';

class SquareJogoVelha extends StatefulWidget {
  final int number;
  //final JogoVelhaStatus status;
  const SquareJogoVelha(this.number, {Key? key}) : super(key: key);

  @override
  State<SquareJogoVelha> createState() => _SquareJogoVelhaState();
}

class _SquareJogoVelhaState extends State<SquareJogoVelha> {
  bool tapActive = false;
  @override
  Widget build(BuildContext context) {
    JogoVelhaController _jogoVelhaController =
        Provider.of<JogoVelhaController>(context, listen: false);

    return Expanded(
      child: InkWell(
        onTap: (() {
          tapActive
              ? null
              : setState(() {
                  tapActive = true;
                  if (_jogoVelhaController.whosPlay == JogoVelhaStatus.xis) {
                    _jogoVelhaController.addNumberPlayer1(widget.number);
                  } else {
                    _jogoVelhaController.addNumberPlayer2(widget.number);
                  }
                });
          _jogoVelhaController.setWhosPlay();
        }),
        child: !tapActive
            ? Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              )
            : _jogoVelhaController.whosPlay == JogoVelhaStatus.bola
                ? Container(
                    child: Icon(
                      Icons.circle_outlined,
                      size: 30,
                    ),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                : Container(
                    child: Center(child: Text("X")),
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
      ),
    );
  }
}
