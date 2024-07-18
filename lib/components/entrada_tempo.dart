import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    super.key,
    required this.valor,
    required this.titulo,
    this.inc,
    this.dec,
  });

  final int valor;
  final String titulo;
  final void Function()? inc;
  final void Function()? dec;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              child: Icon(
                Icons.arrow_downward,
                color: store.isWorking() ? Colors.red : Colors.green,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '$valor min',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: inc,
              child: Icon(
                Icons.arrow_upward,
                color: store.isWorking() ? Colors.red : Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
