import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
                builder: (_) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        EntradaTempo(
                            valor: store.tempoTrabalho,
                            titulo: 'Trabalho',
                            inc: store.isWorking() && store.iniciado
                                ? null
                                : store.incrementarTempoTrabalho,
                            dec: store.isWorking() && store.iniciado
                                ? null
                                : store.decrementarTempoTrabalho),
                        EntradaTempo(
                          valor: store.tempoDescanso,
                          titulo: 'Descanso',
                          inc: store.isResting() && store.iniciado
                              ? null
                              : store.incrementarTempoDescanso,
                          dec: store.isResting() && store.iniciado
                              ? null
                              : store.decrementarTempoDescanso,
                        ),
                      ],
                    )),
          )
        ],
      ),
    );
  }
}
