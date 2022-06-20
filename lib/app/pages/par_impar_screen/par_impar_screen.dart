import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/app/controller/par_impar_controller.dart';
import 'package:provider/provider.dart';

class ParImparScreen extends StatelessWidget {
  const ParImparScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ParImparController _parImparController =
        Provider.of<ParImparController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Par ou Impar'),
      ),
      body: Column(
        children: [
          Text("Você é par ou impar?"),
          _parImparController.playerParImpar == 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _parImparController.setPlayerParImpar(2);
                        },
                        child: Text('Par')),
                    ElevatedButton(
                        onPressed: () {
                          _parImparController.setPlayerParImpar(1);
                        },
                        child: Text('Impar')),
                  ],
                )
              : _parImparController.playerParImpar == 1
                  ? Text('Você é IMPAR')
                  : Text('Você é PAR'),
          Center(
              child: _parImparController.cpuNumber == 0
                  ? Text('??')
                  : Text('${_parImparController.cpuNumber}')),
          _parImparController.cpuNumber == 0
              ? Text('???')
              : _parImparController.statusParImpar ==
                      _parImparController.playerParImpar
                  ? Text('Você Ganhou')
                  : Text('Você Perdeu'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(0);
                  },
                  child: Text("0")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(1);
                  },
                  child: Text("1")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(2);
                  },
                  child: Text("2")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(3);
                  },
                  child: Text("3")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(4);
                  },
                  child: Text("4")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(5);
                  },
                  child: Text("5")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(6);
                  },
                  child: Text("6")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(7);
                  },
                  child: Text("7")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(8);
                  },
                  child: Text("8")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(9);
                  },
                  child: Text("9")),
            ],
          )
        ],
      ),
    );
  }
}
