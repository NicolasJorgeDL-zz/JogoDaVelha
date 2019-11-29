import 'package:flutter/material.dart';

class NomeDoJogador extends StatelessWidget {
  final String jogador;
  NomeDoJogador(this.jogador);

  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: [Colors.red, ],
      //   ),
      // ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Vez do Jogador: ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'vt323',
                  fontWeight: FontWeight.w800,
                  shadows: [Shadow(offset: Offset.fromDirection(90, 3))],
                  textBaseline: TextBaseline.ideographic,
                  decorationStyle: TextDecorationStyle.solid,
                  inherit: false,
                ),
              ),
              Text(
                jogador,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'seasrn',
                  shadows: [Shadow(offset: Offset.fromDirection(90, 3))],
                  fontWeight: FontWeight.w800,
                  fontSize: 60,
                  inherit: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
