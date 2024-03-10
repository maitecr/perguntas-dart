import 'package:flutter/material.dart';
import './questao.dart';

void main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      'Qual é a sua cor preferida?',
      'Qual é o seu animal preferido?',
    ];

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        body: Column(
          children:[
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,  
            )

          ],
        ),

      )
    );
  }

}

class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}

