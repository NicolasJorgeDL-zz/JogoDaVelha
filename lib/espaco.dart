import 'package:flutter/material.dart';

class Espaco extends StatelessWidget {
  final int x, y;
  final Function ativa;
  final String local;

  Espaco({this.x, this.y, this.ativa, this.local});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ativa(x: this.x, y: this.y);
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Center(
            child: Text(
              local,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'seasrn',
                inherit: false,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
