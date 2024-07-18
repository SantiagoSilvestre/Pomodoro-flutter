import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo({
    super.key,
    required this.valor,
    required this.titulo,
  });

  final int valor;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_downward),
            ),
            Text(
              '$valor',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ],
    );
  }
}
