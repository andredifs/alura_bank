import 'package:flutter/material.dart';

class Controlador extends StatelessWidget {
  final TextEditingController? controlador;
  final String? titulo;
  final String? dica;
  final Icon? icon;

  const Controlador({this.controlador, this.titulo, this.dica, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          icon: icon,
          labelText: titulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
