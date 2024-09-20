import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_store/components/cronometro_botao.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(builder: (_) {
      return Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.estaTrabalhando()
                  ? 'Hora de Trabalhar'
                  : 'Hora de Descansar',
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (!store.iniciado)
                    CronometroBotao(
                        texto: 'Iniciar',
                        icone: Icons.play_arrow,
                        click: store.iniciar),
                  if (store.iniciado)
                    CronometroBotao(
                      texto: 'Parar',
                      icone: Icons.stop,
                      click: store.parar,
                    ),
                  CronometroBotao(
                    texto: 'Reiniciar',
                    icone: Icons.refresh,
                    click: store.reiniciar,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
