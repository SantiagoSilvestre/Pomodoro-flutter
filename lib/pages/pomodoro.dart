import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          EntradaTempo(valor: 2, titulo: 'trabalho'),
          EntradaTempo(valor: 5, titulo: 'descanso'),
        ],
      ),
    );
  }
}
