import 'package:flutter/material.dart';
import 'package:flutter_bank/telas/contatos_lista.dart';
import 'package:flutter_bank/telas/form_contato.dart';
import 'telas/dash.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    theme: ThemeData(
    primaryColor: Colors.blue[900],
    accentColor: Colors.blueAccent[700],
    buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent[500],
    textTheme: ButtonTextTheme.primary,
    )
    ),
      home: Dash()
    );
  }

}
