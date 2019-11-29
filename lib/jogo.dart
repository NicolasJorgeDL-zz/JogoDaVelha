import 'package:flutter/material.dart';
import 'package:jogodavelha/espaco.dart';

class Jogo extends StatelessWidget {
  final Function marcaEspaco;
  final List<List<String>> tabuleiro;
  final jogador;

  Jogo({this.marcaEspaco, this.tabuleiro, this.jogador});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Espaco(x: 0, y: 0, ativa: marcaEspaco, local: tabuleiro[0][0]),
              Espaco(x: 0, y: 1, ativa: marcaEspaco, local: tabuleiro[0][1]),
              Espaco(x: 0, y: 2, ativa: marcaEspaco, local: tabuleiro[0][2]),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Espaco(x: 1, y: 0, ativa: marcaEspaco, local: tabuleiro[1][0]),
              Espaco(x: 1, y: 1, ativa: marcaEspaco, local: tabuleiro[1][1]),
              Espaco(x: 1, y: 2, ativa: marcaEspaco, local: tabuleiro[1][2]),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Espaco(x: 2, y: 0, ativa: marcaEspaco, local: tabuleiro[2][0]),
              Espaco(x: 2, y: 1, ativa: marcaEspaco, local: tabuleiro[2][1]),
              Espaco(x: 2, y: 2, ativa: marcaEspaco, local: tabuleiro[2][2]),
            ],
          ),
        ],
      ),
    );
  }
}
