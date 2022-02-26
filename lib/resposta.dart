import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.texto, {Key? key}) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(texto),
      onPressed: null,
    );
  }
}
