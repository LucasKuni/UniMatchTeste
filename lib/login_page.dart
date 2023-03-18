import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(            //Box de Login
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),  //Distancia da borda do celular
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(      // coloca borda no textfield
                  labelText: 'Usuário',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
      /**floatingActionButton: FloatingActionButton( // botao flutuante dir/baixo
        child: Icon(Icons.navigate_next), // icone do botao
        onPressed: () {
          setState(() { //muda o estado a cada clicada na tela
            counter++;
            print(counter); // printa no terminal
          });
        } ,
      ),**/
    );
  }
}

/**import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{ // cria um estado HomePage
  @override                            // Da pra alterar enquanto roda o app
  State<LoginPage> createState() {      // Dinamico
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(                      // Tela branca no fundo
      appBar: AppBar(                   // Molda a tela para se assemelhar a um App
        title: Text('UniMatch'),
      ),
      body: Container(
        height: 800,
        width: 500,
        color: Colors.pinkAccent,
        child: Align(                     // alinhamento do container
          alignment: Alignment.center, //Essas duas linhas podem ser subs por center
          child: Container(
            child : Center(
              child: Text('UNIMATCH',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            height: 200,
            width: 200,
            color: Colors.pink,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton( // botao flutuante dir/baixo
        child: Icon(Icons.add), // icone do botao
        onPressed: () {
          setState(() { //muda o estado a cada clicada na tela
            counter++;
            print(counter); // printa no terminal
          });
        } ,
      ),
    );
  }

}**/