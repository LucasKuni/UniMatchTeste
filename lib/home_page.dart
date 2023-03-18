import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{ // cria um estado HomePage
  @override                            // Da pra alterar enquanto roda o app
  State<HomePage> createState() {      // Dinamico
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;
  late String usuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(                      // Tela branca no fundo
      appBar: AppBar(                   // Molda a tela para se assemelhar a um App
          centerTitle : true,
          title : Text('UniMatch'),
          ),
      body: Container(
        height: 800,
        width: 500,
        color: Colors.pink[100],
        child: Align(                     // alinhamento do container
          alignment: Alignment.center, //Essas duas linhas podem ser subs por center
          child: Container(
            height: 360,
            width: 285,
            color: Colors.pink.shade200,
            child : Align(
              alignment: Alignment.topLeft.add(Alignment(0.1, 0.2)),
              child: Text('Usuário',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton( // botao flutuante dir/baixo
        child: Icon(Icons.navigate_next), // icone do botao
        onPressed: () {
          setState(() { //muda o estado a cada clicada na tela
            counter++;
            print(counter); // printa no terminal
          });
        } ,
      ),
    );
  }

}