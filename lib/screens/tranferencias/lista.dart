import 'package:flutter/material.dart';
import 'package:bytebank/screens/tranferencias/formulario.dart';
import 'package:bytebank/components/item_transferencia.dart';
import 'package:bytebank/models/tranferencia.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Branquinho's Bank"),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final tranferencia = widget._transferencias[indice];
          return ItemTransferencia(tranferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Formulario())).then((transferenciaRecebida) => _atualizaLista(transferenciaRecebida));
        },
      ),
    );
  }

  void _atualizaLista(Transferencia? transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() => widget._transferencias.add(transferenciaRecebida));
    }
  }
}
