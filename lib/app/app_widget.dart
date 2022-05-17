import 'package:flutter/material.dart';
import 'package:poo_project/app/pages/home_screen.dart';
import 'package:poo_project/app/pages/jokenpo_controller.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JokenpoController())
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
