import 'package:flutter/material.dart';
import 'package:poo_project/app/pages/jokenpo_screen/jokenpo_screen.dart';
//import 'package:poo_project/app/pages/par_impar_screen/par_impar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogos'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => JokenpoScreen(),
                      ));
                },
                child: Text("Jokenpo")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JokenpoScreen()));
                },
                child: Text("Par ou Impar")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JokenpoScreen()));
                },
                child: Text("")),
          ],
        ),
      ),
    );
  }
}
