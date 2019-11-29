import 'package:flutter/material.dart';
import 'package:jogodavelha/telaVencedor.dart';

void vencedor(String jogador, context) {
  Navigator.pushReplacement(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) => new TelaVencedor(
                vencedor: jogador,
              )));
}

void semVencedor(context) {
  Navigator.pushReplacement(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) => new TelaVencedor(
                vencedor: 'Ninguem',
              )));
}

bool tabuleiroCheio(List<List<String>> tabuleiro) {
  for (var i = 0; i < 3; i++) {
    for (var j = 0; j < 3; j++) {
      if (tabuleiro[i][j] == '') {
        return false;
      }
    }
  }
  return true;
}

void fimDeJogo(
    {List<String> jogadores,
    int jogadorDaVez,
    List<List<String>> tabuleiro,
    ctxt}) {
  String jogador = jogadores[jogadorDaVez];

  // VERIFICA AS LINHAS
  if (tabuleiro[0][0] == jogador &&
      tabuleiro[0][1] == jogador &&
      tabuleiro[0][2] == jogador) {
    vencedor(jogador, ctxt);
  } else if (tabuleiro[1][0] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[1][2] == jogador) {
    vencedor(jogador, ctxt);
  } else if (tabuleiro[2][0] == jogador &&
      tabuleiro[2][1] == jogador &&
      tabuleiro[2][2] == jogador) {
    vencedor(jogador, ctxt);
  } // VERIFICA AS DIAGONAIS
  else if (tabuleiro[0][0] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][2] == jogador) {
    vencedor(jogador, ctxt);
  } else if (tabuleiro[0][2] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][0] == jogador) {
    vencedor(jogador, ctxt);
  } // VERIFICA AS COLUNAS
  else if (tabuleiro[0][0] == jogador &&
      tabuleiro[1][0] == jogador &&
      tabuleiro[2][0] == jogador) {
    vencedor(jogador, ctxt);
  } else if (tabuleiro[0][1] == jogador &&
      tabuleiro[1][1] == jogador &&
      tabuleiro[2][1] == jogador) {
    vencedor(jogador, ctxt);
  } else if (tabuleiro[0][2] == jogador &&
      tabuleiro[1][2] == jogador &&
      tabuleiro[2][2] == jogador) {
    vencedor(jogador, ctxt);
  } else if (tabuleiroCheio(tabuleiro)) {
    semVencedor(ctxt);
  }
}
