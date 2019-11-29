import 'package:flutter/material.dart';
import 'package:jogodavelha/main.dart';

class TelaVencedor extends StatelessWidget {
  final String vencedor;
  TelaVencedor({this.vencedor});

  void botaoRestart(context) {
    Navigator.pushReplacement(
        context,
        new MaterialPageRoute(
            builder: (BuildContext context) =>
                new MyHomePage(title: 'Jogo da Velha')));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
          colors: [
            Color.fromARGB(255, 192, 36, 37),
            Color.fromARGB(255, 240, 203, 53),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'O Vencendor Foi',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'vt323',
              fontWeight: FontWeight.w800,
              color: Colors.yellow,
              shadows: [Shadow(offset: Offset.fromDirection(90, 3))],
              inherit: false,
            ),
          ),
          Text(
            vencedor,
            style: TextStyle(
              color: Colors.yellow,
              fontFamily: 'seasrn',
              shadows: [Shadow(offset: Offset.fromDirection(90, 3))],
              fontWeight: FontWeight.w800,
              fontSize: 60,
              inherit: false,
            ),
          ),
          Text(
            'Parabens',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'vt323',
              fontWeight: FontWeight.w800,
              color: Colors.yellow,
              shadows: [Shadow(offset: Offset.fromDirection(90, 3))],
              inherit: false,
            ),
          ),
          GestureDetector(
            onTap: () {
              botaoRestart(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.redAccent],
                  ),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Recomeçar',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'vt323',
                      fontWeight: FontWeight.w800,
                      color: Colors.yellow,
                      letterSpacing: 5,
                      shadows: [
                        Shadow(offset: Offset.fromDirection(110, 3)),
                      ],
                      inherit: false,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
