import 'package:flutter/material.dart';
import 'package:flutter_bank/telas/form_contato.dart';

class Contatos_lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                "Ramon",
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                "R\$ 500,00",
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContatoForm(),
            ),
          ).then((novoContato) => debugPrint(novoContato.toString()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
