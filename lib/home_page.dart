import 'package:flutter/material.dart';
import 'package:unimatchteste/login_page.dart';
import 'package:unimatchteste/perfil_page.dart';
import 'package:unimatchteste/cadastro_page.dart';

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
        height: 900,
        width: 600,
        color: Colors.pink[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //posicao de tudo
          //crossAxisAlignment: CrossAxisAlignment.center, // posicao cruz
          children: [
            Text('Contador: $counter'),
            Container(height: 50,),  // espacamento altura
            //CustomSwitch(),
            Container(height: 50,),

            Row(                    // linha/oposto da Column
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),

      drawer: Drawer(  //CRIA MENU NA TELA PRINCIPAL, 3 BARRINHAS
        child: ListView(
          children: [
            DrawerHeader(  //CABECALHO DO MENU
              decoration: BoxDecoration(
              color: Colors.pink,
              ),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 27.0)),
            ),
            ListTile(
              title: Text('Perfil',
              style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                //REDIRECIONA PRO WIDGET NOMEADO NO app_widget
                Navigator.of(context).pushNamed('/perfil');
                /**Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerfilPage()),
                );**/
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sair',
                  style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/login');
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
        /**child: Align(                     // alinhamento do container
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
        ),**/

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