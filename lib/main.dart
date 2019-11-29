import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jogodavelha/fimdejogo.dart';
import './nomeDoJogador.dart';
import './jogo.dart';
import './fraseMotivacional.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da Velha',
      home: MyHomePage(title: 'Jogo da Velha'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _jogador = ['x', 'o'];
  int _jogadorDaVez = 0;
  var _tabuleiro = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ];
  int _numeroDaFrase = 8;
  Random rng = new Random();
  void trocaVez() {
    if (_jogadorDaVez == 0) {
      _jogadorDaVez = 1;
    } else {
      _jogadorDaVez = 0;
    }
  }

  void _marcaEspaco({int x, int y}) {
    setState(() {
      _numeroDaFrase = rng.nextInt(36);
      if (_tabuleiro[x][y] == '') {
        _tabuleiro[x][y] = _jogador[_jogadorDaVez];
        fimDeJogo(
            jogadores: _jogador,
            jogadorDaVez: _jogadorDaVez,
            tabuleiro: _tabuleiro,
            ctxt: context);
        trocaVez();
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 192, 36, 37),
            Color.fromARGB(255, 240, 203, 53),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          NomeDoJogador(_jogador[_jogadorDaVez]),
          Jogo(
            marcaEspaco: _marcaEspaco,
            tabuleiro: _tabuleiro,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: FraseMotivacional(_numeroDaFrase),
          ),
        ],
      ),
    );
  }
}
