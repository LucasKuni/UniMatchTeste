import 'package:flutter/material.dart';

import 'login_page.dart';

class PerfilPage extends StatefulWidget{ // cria um estado HomePage
  @override                            // Da pra alterar enquanto roda o app
  State<PerfilPage> createState() {      // Dinamico
    return PerfilPageState();
  }
}

class PerfilPageState extends State<PerfilPage> {
  int counter = 0;
  String email = '', DatNasc = '', Uni = '', nome = '', Telefone = '',
      senha = '', ConfSenha = '', CPF = '', UniPref = '', Nu = '';
  //Null Nu = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                   // Molda a tela para se assemelhar a um App
        centerTitle : true,
        title : Text('UniMatch'),
      ),
      body: SingleChildScrollView(  //permite dar Scroll na tela enquanto digita
        child: SizedBox(            //Box de Login
          width: MediaQuery.of(context).size.width, // delimita o tamanho (X,Y)
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),  //Distancia da borda do celular
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text){
                    print(text);
                    nome = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(      // coloca borda no textfield
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(height: 10,),
                TextField(
                  onChanged: (text){
                    print(text);
                    email = text;
                  },
                  obscureText:  true,  //deixa senha nao visivel
                  decoration: InputDecoration(      // coloca borda no textfield
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(height: 10,),
                TextField(
                  onChanged: (text){
                    print(text);
                    senha = text;
                  },
                  obscureText:  true,  //deixa senha nao visivel
                  decoration: InputDecoration(      // coloca borda no textfield
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(height: 10,),
                TextField(
                  onChanged: (text){
                    print(text);
                    ConfSenha = text;
                  },
                  obscureText:  true,  //deixa senha nao visivel
                  decoration: InputDecoration(      // coloca borda no textfield
                    labelText: 'Confirmar senha',
                    border: OutlineInputBorder(),
                  ),
                ),

                Container(height: 20,),
                ElevatedButton(onPressed: (){
                  if(senha == ConfSenha){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }else{
                    //RETORNAR ConfSenha COMO NULL,LIMPAR O Q FOI DIGITADO
                    /**ConfSenha.replaceAllMapped( Nu, (match) => Nu,);**/
                    /**setState(() {
                        ConfSenha = null;
                        return ConfSenha.nu;
                        });**/
                  }
                }, child: Icon(Icons.done)),
              ],
            ),
          ),
        ),
      ),

    );
  }
}