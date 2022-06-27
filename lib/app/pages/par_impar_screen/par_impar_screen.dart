import 'package:flutter/material.dart';
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
        title: const Text('Par ou Impar'),
      ),
      body: Column(
        children: [
          const Text("Você é par ou impar?"),
          _parImparController.playerParImpar == 0
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _parImparController.setPlayerParImpar(2);
                        },
                        child: const Text('Par')),
                    ElevatedButton(
                        onPressed: () {
                          _parImparController.setPlayerParImpar(1);
                        },
                        child: Text('Impar')),
                  ],
                )
              : _parImparController.playerParImpar == 1
                  ? const Text('Você é IMPAR')
                  : const Text('Você é PAR'),
          Center(
              child: _parImparController.cpuNumber == 0
                  ? const Text('??')
                  : Text('${_parImparController.cpuNumber}')),
          _parImparController.cpuNumber == 0
              ? const Text('???')
              : _parImparController.statusParImpar ==
                      _parImparController.playerParImpar
                  ? const Text('Você Ganhou')
                  : const Text('Você Perdeu'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(0);
                  },
                  child: const Text("0")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(1);
                  },
                  child: const Text("1")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(2);
                  },
                  child: const Text("2")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(3);
                  },
                  child: const Text("3")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(4);
                  },
                  child: const Text("4")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(5);
                  },
                  child: const Text("5")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(6);
                  },
                  child: const Text("6")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(7);
                  },
                  child: const Text("7")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(8);
                  },
                  child: const Text("8")),
              ElevatedButton(
                  onPressed: () {
                    _parImparController.setPlayerNumber(9);
                  },
                  child: const Text("9")),
            ],
          )
        ],
      ),
    );
  }
}
