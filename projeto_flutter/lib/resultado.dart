import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado({
    super.key,
    required this.pontuacao,
    required this.reiniciarQuestionario,
  });

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns, você obteve $pontuacao pontos';
    } else if (pontuacao < 12) {
      return 'Você é bom, você obteve $pontuacao pontos';
    } else if (pontuacao < 16) {
      return 'Impressionante, você obteve $pontuacao pontos';
    } else {
      return 'Nível Jedi, você obteve $pontuacao pontos';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: reiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        )
      ],
    );
  }
}
