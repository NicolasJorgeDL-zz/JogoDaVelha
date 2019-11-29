import 'package:flutter/material.dart';

class FraseMotivacional extends StatelessWidget {
  final List<String> frase = [
    'Vai deixar ?',
    'WOW',
    'Incrivel habilidade',
    'Não pode ser',
    'Voce é um Deus do jogo',
    'Uma Máquina jogando',
    'Jámais pensaria nisto',
    'Quem diria que faria isso',
    'Tem uma jogada Muito Boa',
    'Um Montro Feroz',
    'Quer outra ?',
    'Jogada da Partida',
    'O que aconteceu ? não vi',
    'Que que foi isso',
    'Sabia que isso ia acontecer',
    'Gostei disso',
    'Essa jogada éra previsivel',
    'Vai ganhar',
    'Vai perder',
    'Um genio fora do seu tempo',
    'Uma jogada de mestre',
    'O que vai fazer agora ?',
    'Mais que jogada.',
    'Jogada humilde',
    'Não tem o que fazer agora',
    'Acabou pra voce',
    'To vendo que já ganhou',
    'Agora deu Ruin',
    'Agora deu a boa',
    'Só vamo',
    'Voce consegue',
    'Que irado',
    'Nada a ver',
    'De graça',
    'O que foi feito ta feito',
    'Cade o Jamal ?'
  ];
  final int numero;
  FraseMotivacional(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            frase[numero],
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'vt323',
              fontWeight: FontWeight.w800,
              color: Colors.red,
              // shadows: [Shadow(offset: Offset.fromDirection(90, 3))],
              inherit: false,
            ),
          ),
        ],
      ),
    );
  }
}
