import 'package:flutter/material.dart';
import 'package:poo_project/app/controller/jokenpo_controller.dart';
import 'package:provider/provider.dart';

class JokenpoScreen extends StatelessWidget {
  const JokenpoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    JokenpoController _jokenpoController =
        Provider.of<JokenpoController>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("JOKENPO"),
        backgroundColor: Colors.greenAccent,
        elevation: 0,
      ),
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          const Text("CPU"),
          Image.asset(_jokenpoController.statusImage),
          Text(_jokenpoController.status),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Image.asset("assets/pedra.png", scale: 1.3),
                onTap: () {
                  _jokenpoController.setPlayerStatus(1);
                },
              ),
              InkWell(
                child: Image.asset("assets/papel.png", scale: 1.3),
                onTap: () {
                  _jokenpoController.setPlayerStatus(2);
                },
              ),
              InkWell(
                child: Image.asset("assets/tesoura.png", scale: 1.3),
                onTap: () {
                  _jokenpoController.setPlayerStatus(3);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
