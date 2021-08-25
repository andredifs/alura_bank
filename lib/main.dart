import 'package:flutter/material.dart';
import 'package:bytebank/screens/tranferencias/lista.dart';

void main() => runApp(AluraBank());

class AluraBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan, appBarTheme: AppBarTheme(elevation: 10)),
      home: ListaTransferencias(),
    );
  }
}
