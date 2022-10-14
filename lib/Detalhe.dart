import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Detalhe extends StatelessWidget {
// Dados vindo do DB(data base == Banco de dados)
  final String foto = 'imgs/bolo_de_maracuja.jpg';
  final String nomeReceita = 'Bolo de chocolate com mousse de marácuja';
  final String porcoes = '1000 porções';
  final String tempoPreparo = '40 min';
  final String numeroFavoritos = '1.123';
  final String numeroComentarios = '289';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Foto
        new Image.asset(foto),

        // Título e Informações
        new Container(
          color: Colors.orange[700],
          padding: new EdgeInsets.all(25),
          child: new Column(
            children: [
              new Text(
                nomeReceita,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 2,
                width: 700,
                child: new Container(
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              // Ícones
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Preparo
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidClock,
                        color: Colors.white,
                        size: 32,
                      ),
                      SizedBox(height: 10),
                      new Text('Preparo',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      new SizedBox(height: 10),
                      new Text(
                        tempoPreparo,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                  // SizedBox(
                  //   height: 50,
                  // ),

                  // Rendimento
                  new Column(
                    children: [
                      FaIcon(FontAwesomeIcons.cheese,
                          size: 32, color: Colors.white),
                      new SizedBox(height: 10),
                      new Text('Rendimento',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      new SizedBox(height: 10),
                      new Text(
                        porcoes,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  // Favoritos
                  new Column(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(height: 10),
                      new Text(
                        'Comentários',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      new Text(numeroFavoritos,
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),

                  // Comentários
                  new Column(
                    children: [
                      FaIcon(FontAwesomeIcons.solidComment,
                          size: 35, color: Colors.white),
                      SizedBox(height: 10),
                      new Text(
                        'Comentários',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      new Text(
                        numeroComentarios,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        new SizedBox(height: 10), //Espaçamento

        // Ingredientes
        new Container(
          // height: 100,
          // color: Colors.deepOrange[400],
          child: new Column(
            children: [
              // Ícone e Ingredientes
              SizedBox(
                height: 10,
              ),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.bookOpen,
                      color: Colors.orange[700], size: 24),

                  new SizedBox(width: 10),
                  // Padding(padding: EdgeInsets.only(left: 10)),

                  new Text('INGREDIENTES',
                      style: new TextStyle(
                          fontSize: 20, color: Colors.orange[700]))
                ],
              ),

              SizedBox(height: 10),

              new Container(
                color: Colors.orange[100],
                height: 40,
                width: 800,
                margin: EdgeInsets.only(right: 0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      'MASSA',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        // Lista de ingredientes
        new Container(
          padding: EdgeInsets.all(20),
          child: new Row(
            children: [
              // marcarTexto('2 Ovos'),

              new Text(
                '- 2 ovos\n' +
                    '- 1 xícara (chá) de achocolatado\n' +
                    '- 1 xícara (chá) de óleo\n' +
                    '- 2 xícaras (chá) de farinha de trigo\n' +
                    '- 1 xícara (chá) de leite\n' +
                    '- 1 xícara (chá) de açúcar\n' +
                    '- 1 colher (sopa) de fermento em pó',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),

        // ícone e Modo de preparo
        new Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          FaIcon(FontAwesomeIcons.soap, color: Colors.orange.shade700),
          new SizedBox(width: 10),
          new Text(
            'Modo de Preparo',
            style: TextStyle(
              color: Colors.orange[700],
              fontSize: 24,
              /*fontWeight: FontWeight.bold*/
            ),
          )
        ]),

        SizedBox(
          height: 10,
        ),

        new Container(
          height: 40 ,
          width: 800,
          color: Colors.orange[100],
          margin: EdgeInsets.only(right: 0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [        
           new Text('MASSA', style: TextStyle(fontWeight: FontWeight.bold),          
         ),
            ]
          ),
        ),

      SizedBox(height: 30),
        // Modo de preparo
        new Container(
          margin: EdgeInsets.only(left: 5),
          child: new Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              new Column(
              children: [    
               new Text(       
              '1 - Bata no liquidificador o óleo, o leite e os ovos, misture bem aos outros ingredientes.\n' +
              '2 - Unte com margarina e polvilhe com farinha de trigo uma forma para bolo.\n' +
              '3 - Despeje a massa e leve para assar em forno quente, por aproximadamente 40 minutos\n     ' +
                   'ou até que ao enfiar um palito ele saia limpo.\n' +
              '4 - Espere esfriar, desenforme e corte ao meio.\n' +
              '5 - Umedeça com a calda, recheie com metade da mousse e cubra com a outra metade.\n' +
              '6 - Leve para gelar, quando a mousse estiver dura, espalhe a semente do maracujá sobre o bolo.\n' +
              '7 - Sirva gelado.',
              style: TextStyle(fontSize: 18),
               ),
               ]
              ),
            
            ],
          ),
        ),
      ],
    );
  }
}

Text marcarTexto(String texto) {
  Text marcador = new Text(
    "\u2022 $texto",
    style: TextStyle(fontSize: 24),
  );
  return marcador;
}

Text caracterEspe(String texto) {
  Text numeroEsp = new Text('$texto',
      style: TextStyle(fontSize: 15));
  return numeroEsp;
}

Text caracterNumerico(String numero) {
  return new Text(
    '$numero',
    style: TextStyle(fontSize: 30, color: Colors.grey[350]),
  );
}
    
  
 



/*

              // Rendimento
            
              // Favoritos

              // Comentários
            ],
          ),
        ],
      ),
    );
  }
}
*/
