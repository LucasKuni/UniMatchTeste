import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget{ // cria uma build AppWidget
  // Nao da pra alterar enquanto roda o App
  // estatico
  @override
  Widget build(BuildContext context){
    return MaterialApp( //deixa os widgets mais bonitinhos (email...)
      theme: ThemeData(primarySwatch:Colors.pink), // cor do title
      home: LoginPage(), // tela Home

    );
    /**return Container(
        child: Center(
        child: Text(
        title,
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        ),
        );**/
  }
}