import 'package:flutter/material.dart';
import 'package:poo_project/app/pages/jokenpo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => JokenpoScreen()));
          },
          child: Text("Jokenpo")),
    );
  }
}
