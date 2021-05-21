class Contato{
  final int id;
  final String nome;
  final int conta;

  Contato(this.id, this.nome, this.conta);

  @override
  String toString() {
    return 'Contato{nome: $nome, conta: $conta}';
  }
}