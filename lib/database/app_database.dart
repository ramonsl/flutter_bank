import 'package:flutter_bank/models/contato.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/*
Future<Database> createDatabase(){
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'dbBank.db');
    return openDatabase(path, onCreate: (db, version){
      db.execute('CREATE TABLE contatos('
          'id INTEGER PRIMARY KEY, '
          'nome TEXT, '
          'conta_numero INTEGER)');
    }, version: 1);
  });
}
*/

Future<Database> createDatabase(){
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'dbBank.db');
    return openDatabase(path, onCreate: (db, version){
      db.execute('CREATE TABLE contatos('
          'id INTEGER PRIMARY KEY AUTOINCREMENT, '
          'nome TEXT, '
          'conta_numero INTEGER)');
    }, version: 1,
    onDowngrade: onDatabaseDowngradeDelete,
    );

  });
}


Future<int> save(Contato contact) {
  return createDatabase().then((db) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['nome'] = contact.nome;
    contactMap['conta_numero'] = contact.conta;
    return db.insert('contatos', contactMap);
  });
}

Future<List<Contato>> findAll() {
  return createDatabase().then((db) {
    return db.query("contatos").then((maps) {
      final List<Contato> contatos = List();
      for (Map<String, dynamic> map in maps) {
        final Contato contato = Contato(
          map['id'],
          map['nome'],
          map["conta_numero"],
        );
        contatos.add(contato);
      }
      return contatos;
    });
  });
}
