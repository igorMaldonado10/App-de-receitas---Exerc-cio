import 'package:flutter/material.dart';
import 'package:tudo_soboroso/Detalhe.dart';

class TudoSaboroso extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TudoSaborosoState();
}

class TudoSaborosoState extends State<TudoSaboroso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título

      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(255, 160, 0, 1),
        title: new Text('Tudo Saboroso',
        style: TextStyle(fontWeight: FontWeight.bold),),
        leadingWidth: 55,
        leading: Transform.translate(
          offset: new Offset(10, 10),
          child: Image.asset('imgs/chef_de_cozinha.png'),
        ),
      ),

      //  Menu de opções
      // drawer: ,

      // Corpo do App
      body: SingleChildScrollView(
       // Informações
       child: new Detalhe(),
       
       /* child: new Column(
          // mainAxisAlignment: MainAxisAlignment.end,

          children: [
            // Padding(padding: const EdgeInsets.only(top: 50)),

            // Foto do produto
            SizedBox(
                // height: MediaQuery.of(context).size.width,
                child: Image.asset('imgs/bolo_de_maracuja.jpg')),
            

            // Informações
            new Detalhe(),

            // Ingredientes
          ],
        )*/
      ),
    );

    // Barra Inferior
    // bottomNavigationBar: ,
  }
}
