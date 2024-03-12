import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() reiniciar;

  Resultado(this.pontuacao, this.reiniciar);

  String get fraseResultado {
    if(pontuacao < 8) {
      return 'Parabéns';
    } else if(pontuacao < 12) {
      return 'batata';
    } else if(pontuacao < 16) {
      return 'batata 20.';
    } else {
      return 'spock';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
              child: Text(
                fraseResultado,
                style: TextStyle(fontSize: 28),
                ),
            ),
            TextButton(onPressed: reiniciar, child: Text('Reiniciar?', style: TextStyle(fontSize: 18, color: Colors.blue) ))
      ],
    );
  }
}