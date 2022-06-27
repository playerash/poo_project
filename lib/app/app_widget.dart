import 'package:flutter/material.dart';
import 'package:poo_project/app/controller/jogo_velha_controller.dart';
import 'package:poo_project/app/controller/par_impar_controller.dart';
import 'package:poo_project/app/pages/home_screen/home_screen.dart';
import 'package:poo_project/app/controller/jokenpo_controller.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JokenpoController()),
        ChangeNotifierProvider(create: (context) => ParImparController()),
        ChangeNotifierProvider(create: (context) => JogoVelhaController()),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
