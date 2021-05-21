import 'package:flutter/material.dart';
import 'package:flutter_bank/database/app_database.dart';
import 'package:flutter_bank/models/contato.dart';
import 'package:flutter_bank/telas/form_contato.dart';

class Contatos_lista extends StatelessWidget {
  //final List<Contato> contatos = List();

  @override
  Widget build(BuildContext context) {
    //contatos.add(Contato(4, 'Ramon', 1000));
    //contatos.add(Contato(4, 'Ramon', 1000));
    //contatos.add(Contato(4, 'Ramon', 1000));

    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
      ),
      body: FutureBuilder(
        //future: findAll(),
        future: Future.delayed(Duration(seconds: 1)).then((value) => findAll()),
        builder: (context, snapshot) {
        if(snapshot.data!=null){
          final List<Contato>  contatos=snapshot.data;
          return ListView.builder(
            itemBuilder: (context, index) {
              final Contato contato = contatos[index];
              return _contatoItem(contato);
            },
            itemCount: contatos.length,
          );

        }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Text("Loading")
              ],
            ),
          );
        },
      ),

      /*
      ListView.builder(
        itemBuilder: (context, index) {
          final Contato contato = contatos[index];
          return _contatoItem(contato);
        },
        itemCount: contatos.length,
      ),
*/

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContatoForm(),
                ),
              );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class _contatoItem extends StatelessWidget {
  final Contato contato;

  _contatoItem(this.contato);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contato.nome,
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Text(
          contato.conta.toString(),
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
