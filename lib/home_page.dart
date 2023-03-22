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
        actions: [
          FilledButton.icon(  //Cria o icone chat
            icon: Icon(Icons.chat_rounded),
            label: Container(
              color: Colors.white,
            ),
            onPressed: (){ //REDIRECIONA P/ TELA DE PERFIL, MUDAR P/ TELA DE CHAT
              Navigator.of(context).pushNamed('/perfil');
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.pink[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //posicao de tudo
          //crossAxisAlignment: CrossAxisAlignment.center, // posicao cruz
          children: [
            Align(
              heightFactor: 1.1,  //MOVE SÓ O Q ESTÁ ABAIXO DO ALIGN
              child: SizedBox(
                child: Container(
                  height: 562,
                  width: 340,
                  color: Colors.white,
                ),
              ),
                //child: Text('Contador: $counter')
            ),
            //Container(height: 50,),  // espacamento altura
            //CustomSwitch(),


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
                  width: 60,
                  height: 60,
                  color: Colors.green.shade200,
                  child: FilledButton.icon(
                      icon: Icon(Icons.check_circle),
                      label: Container(
                        width: 60,
                        height: 60,
                      ),
                      onPressed: (){

                      }
                  ),
                ),
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