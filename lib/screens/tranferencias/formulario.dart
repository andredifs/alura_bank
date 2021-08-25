import 'package:bytebank/models/controlador.dart';
import 'package:bytebank/models/tranferencia.dart';
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  final TextEditingController _controllerNumeroDaConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Formulário"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Controlador(
              controlador: widget._controllerNumeroDaConta,
              titulo: 'Número da Conta',
              dica: '0000',
            ),
            Controlador(
              controlador: widget._controllerValor,
              titulo: 'Valor',
              dica: '0.00',
              icon: Icon(Icons.monetization_on),
            ),
            ElevatedButton(
              onPressed: () => _criarTransferencia(context),
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int? numeroDaConta = int.tryParse(widget._controllerNumeroDaConta.text);
    final double? valor = double.tryParse(widget._controllerValor.text);

    if (valor != null && numeroDaConta != null) {
      final transferenciaCriada = Transferencia(valor, numeroDaConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
